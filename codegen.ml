(* Code generation: translate takes a semantically checked AST and
produces LLVM IR

LLVM tutorial: Make sure to read the OCaml version of the tutorial

http://llvm.org/docs/tutorial/index.html

Detailed documentation on the OCaml LLVM library: 

http://llvm.moe/
http://llvm.moe/ocaml/

*)

module L = Llvm
module A = Ast
open Sast 

module StringMap = Map.Make(String)

(* translate : Sast.program -> Llvm.module *)


let translate program =
  let globals = program.sglobals
  and functions = program.sfunctions
  and structs = program.sstructs
  in
  let context    = L.global_context () in
  
  (* Create the LLVM compilation module into which
     we will generate code *)
  let the_module = L.create_module context "MicroC" in

  (* Get types from the context *)
  let i32_t      = L.i32_type    context
  and i8_t       = L.i8_type     context
  and i1_t       = L.i1_type     context
  and float_t    = L.double_type context
  and pitch_t    = L.pointer_type (L.i8_type context)
  and void_t     = L.void_type   context in
  let struct_t n = L.named_struct_type context n in
  let str_t      = L.pointer_type i8_t
  in
  (* Return the LLVM type for a MicroC type *)
  let rec ltype_of_primitive = function
      A.Int    -> i32_t
    | A.Bool   -> i1_t
    | A.Float  -> float_t
    | A.String -> str_t
    | A.Void   -> void_t
    | A.Pitch -> pitch_t
    | A.Struct n -> struct_t n
    | A.Array (array_typ,_) -> L.pointer_type (ltype_of_primitive array_typ) 
  in
  (* Create a map of global variables after creating each *)
  let global_vars : L.llvalue StringMap.t =
    let global_var m (t, n, e) = 
      let init = match t with
          A.Float -> L.const_float (ltype_of_primitive t) 0.0
        | _ -> L.const_int (ltype_of_primitive t) 0
      in StringMap.add n (L.define_global n init the_module) m in
    List.fold_left global_var StringMap.empty globals 
  in
  let global_var_types = 
  let global_var_type m (t, n, e) = StringMap.add n t m 
  in List.fold_left global_var_type StringMap.empty globals
  in
  let printf_t : L.lltype = 
      L.var_arg_function_type i32_t [| str_t |] in
  let printf_func : L.llvalue = 
      L.declare_function "printf" printf_t the_module in

  let prints_t : L.lltype = 
      L.var_arg_function_type str_t [| str_t |] in
  let prints_func : L.llvalue = 
      L.declare_function "puts" prints_t the_module in

  let pitch_to_int: L.lltype = 
      L.var_arg_function_type pitch_t [|pitch_t|] in
  let pitch_to_int_func : L.llvalue = 
      L.declare_function "pitch_to_int" pitch_to_int the_module in




  let struct_decls = 
    let struct_decl m sdecl =
      let name = sdecl.sstruct_name
      and member_types = Array.of_list (List.map (fun (t,_,_) -> ltype_of_primitive t) sdecl.smembers)
      in let stype = L.struct_type context member_types in
      StringMap.add name (stype, sdecl.smembers) m in
    List.fold_left struct_decl StringMap.empty structs
  in
  let struct_lookup n = try StringMap.find n struct_decls
    with Not_found -> raise (Failure ("struct " ^ n ^ " not found")) in
  let rec ltype_of_typ = function
    A.Struct n -> fst (struct_lookup n) 
    | t -> ltype_of_primitive t
  in
  (* Define each function (arguments and return type) so we can 
     call it even before we've created its body *)
  let function_decls : (L.llvalue * sfunc_decl) StringMap.t =
    let function_decl m fdecl =
      let name = fdecl.sfname
      and formal_types = 
       Array.of_list (List.map (fun (t,_,_) -> ltype_of_typ t) fdecl.sformals)
      in let ftype = L.function_type (ltype_of_typ fdecl.styp) formal_types in
    StringMap.add name (L.define_function name ftype the_module, fdecl) m in
  List.fold_left function_decl StringMap.empty functions in
  
  (* Fill in the body of the given function *)
  let build_function_body fdecl =
    let (the_function, _) = StringMap.find fdecl.sfname function_decls in
    let builder = L.builder_at_end context (L.entry_block the_function) in
    let int_format_str = L.build_global_stringptr "%d\n" "fmt" builder
    and float_format_str = L.build_global_stringptr "%g\n" "fmt" builder in

    (* Construct the function's "locals": formal arguments and locally
       declared variables.  Allocate each on the stack, initialize their
       value, if appropriate, and remember their values in the "locals" map *)
    let local_vars =
      let add_formal m (t, n, e) p = 
        L.set_value_name n p;
      let local = L.build_alloca (ltype_of_typ t) n builder in
        ignore (L.build_store p local builder);
      StringMap.add n local m 

      (* Allocate space for any locally declared variables and add the
       * resulting registers to our map *)
      and add_local m (t, n, e) =

      let local_var = L.build_alloca (ltype_of_typ t) n builder in 
      StringMap.add n local_var m in
      let formals = List.fold_left2 add_formal StringMap.empty fdecl.sformals
      (Array.to_list (L.params the_function)) in
    List.fold_left add_local formals fdecl.slocals 
    in
    (* Return the value for a variable or formal argument.
       Check local names first, then global names *)
    let lookup n = try StringMap.find n local_vars
                 with Not_found -> StringMap.find n global_vars
    in
    (* Construct code for an expression; return its value *)
    let rec expr builder ((_, e) : sexpr) = match e with
        SLiteral i  -> L.const_int i32_t i
      | SBoolLit b  -> L.const_int i1_t (if b then 1 else 0)
      | SFliteral l -> L.const_float_of_string float_t l
      | SSliteral s -> L.build_global_stringptr s "123" builder
      | SArrayLit (sexpr_list) ->
        let all_elem = List.map (fun e ->
            expr builder e) sexpr_list in
        let llarray_t = L.type_of (List.hd all_elem) in
        let num_elems = List.length sexpr_list in
          let ptr = L.build_array_malloc llarray_t
              (L.const_int i32_t num_elems) "" builder 
          in
          ignore (List.fold_left (fun i elem ->
              let idx = L.const_int i32_t i in
              let eptr = L.build_gep ptr [|idx|] "" builder in
              let cptr = L.build_pointercast eptr 
                  (L.pointer_type (L.type_of elem)) "" builder in
              let _ = (L.build_store elem cptr builder) 
              in i+1)
              0 all_elem); ptr
      | SStructAccess(s, m) -> 
        let (stype,location) = match s with
        (t,SId id) ->  (t, lookup id)
        | _ -> raise (Failure("Illegal struct-type."))
        in
        let members = snd (struct_lookup (A.string_of_typ stype)) in
          let rec get_idx n lst i = match lst with
              | [] -> raise (Failure("Id " ^ m ^ " is not a member of " ^ string_of_sexpr s))
              | hd::tl -> if hd=n then i else get_idx n tl (i+1)
            in let idx = (get_idx m (List.map (fun (_,nm,_) -> nm) members) 0) in
            let ptr = L.build_struct_gep location idx ("struct.ptr") builder in
        L.build_load ptr ("struct.val."^m) builder
      
      | SArrayAccess(arr, i) ->
        let arr_var = expr builder arr in
        let idx = expr builder i in 
        let ptr = 
          L.build_load (L.build_gep arr_var 
                          [| idx |] "" builder) 
            "" builder in ptr
      | SPliteral p -> L.build_global_stringptr p "4#" builder
      | SNoexpr     -> L.const_int i32_t 0
      | SId s       -> L.build_load (lookup s) s builder
      

      | SAssign ((_,SStructAccess(s,m)), e) ->
          let e' = expr builder e in
          let (stype,location) = match s with
          (t,SId id) ->  (t, lookup id)
          | _ -> raise (Failure("Illegal struct-type."))
          in
            let members = snd (struct_lookup (A.string_of_typ stype)) in
              let rec get_idx n lst i = match lst with
                | [] -> raise (Failure("Id " ^ m ^ " is not a member of struct " ^ string_of_sexpr s))
                | hd::tl -> if (hd=n) then i else get_idx n tl (i+1)
              in
              let idx = get_idx m (List.map (fun (_,nm,_) -> nm) members) 0 in
            let ptr = L.build_struct_gep location idx "struct.ptr" builder in
          ignore(L.build_store e' ptr builder); e'



      | SAssign ((_,SArrayAccess(arr, i)), e) -> 
        let e' = expr builder e in
        let arr_var = expr builder arr in
        let idx = expr builder i in 
        let ptr = 
          L.build_gep arr_var [| idx |] "" builder 
        in 
        ignore(L.build_store e' ptr builder); e'
      | SAssign (e1, e2) -> 
      let e2' = expr builder e2 in
      (match snd e1 with
           SId s -> ignore(L.build_store e2' (lookup s) builder); e2'
          | _ -> raise (Failure ("Not implemented in codegen"))
      ) 
      | SBinop ((A.Float,_) as e1, op, e2) ->
    let e1' = expr builder e1
    and e2' = expr builder e2 in
    (match op with 
      A.Add     -> L.build_fadd
    | A.Sub     -> L.build_fsub
    | A.Mult    -> L.build_fmul
    | A.Div     -> L.build_fdiv 
    | A.Mod     -> L.build_frem
    | A.Equal   -> L.build_fcmp L.Fcmp.Oeq
    | A.Neq     -> L.build_fcmp L.Fcmp.One
    | A.Less    -> L.build_fcmp L.Fcmp.Olt
    | A.Leq     -> L.build_fcmp L.Fcmp.Ole
    | A.Greater -> L.build_fcmp L.Fcmp.Ogt
    | A.Geq     -> L.build_fcmp L.Fcmp.Oge
    | A.And | A.Or ->
        raise (Failure "internal error: semant should have rejected and/or on float")
    ) e1' e2' "tmp" builder
      | SBinop (e1, op, e2) ->
    let e1' = expr builder e1
    and e2' = expr builder e2 in
    (match op with
      A.Add     -> L.build_add
    | A.Sub     -> L.build_sub
    | A.Mult    -> L.build_mul
    | A.Div     -> L.build_sdiv
    | A.Mod     -> L.build_srem
    | A.And     -> L.build_and
    | A.Or      -> L.build_or
    | A.Equal   -> L.build_icmp L.Icmp.Eq
    | A.Neq     -> L.build_icmp L.Icmp.Ne
    | A.Less    -> L.build_icmp L.Icmp.Slt
    | A.Leq     -> L.build_icmp L.Icmp.Sle
    | A.Greater -> L.build_icmp L.Icmp.Sgt
    | A.Geq     -> L.build_icmp L.Icmp.Sge
    ) e1' e2' "tmp" builder
      | SUnop(op, ((t, _) as e)) ->
          let e' = expr builder e in
    (match op with
      A.Neg when t = A.Float -> L.build_fneg 
    | A.Neg                  -> L.build_neg
          | A.Not                  -> L.build_not) e' "tmp" builder
    | SCall ("print", [t,e]) | SCall ("printb", [t,e]) ->
      (match t with 
      A.Int -> L.build_call printf_func [| int_format_str ; (expr builder (t,e)) |] "printf" builder
      | A.String -> L.build_call prints_func [| (expr builder (t,e)) |] "prints" builder
      | A.Float -> L.build_call printf_func [| float_format_str ; (expr builder (t,e)) |] "printf" builder
      | A.Pitch -> L.build_call prints_func [|(expr builder (t,e)) |] "prints" builder
      | _ -> raise (Failure (A.string_of_typ t)))
    | SCall ("pitch_to_int", e) -> L.build_call pitch_to_int_func [|expr builder (List.hd e)|] "pitchtoint" builder
    | SCall (f, args) ->
       let (fdef, fdecl) = StringMap.find f function_decls in
       let llargs = List.rev (List.map (expr builder) (List.rev args)) in
       let result = (match fdecl.styp with 
                      A.Void -> ""
                    | _ -> f ^ "_result") in
       L.build_call fdef (Array.of_list llargs) result builder
    in
    
    (* LLVM insists each basic block end with exactly one "terminator" 
       instruction that transfers control.  This function runs "instr builder"
       if the current block does not already have a terminator.  Used,
       e.g., to handle the "fall off the end of the function" case. *)
    let add_terminal builder instr =
      match L.block_terminator (L.insertion_block builder) with
  Some _ -> ()
      | None -> ignore (instr builder) in
  
    (* Build the code for the given statement; return the builder for
       the statement's successor (i.e., the next instruction will be built
       after the one generated by this call) *)

    let rec stmt builder = function
        SBlock sl -> List.fold_left stmt builder sl
      | SExpr e -> ignore(expr builder e); builder 
      | SReturn e -> ignore(match fdecl.styp with
                              (* Special "return nothing" instr *)
                              A.Void -> L.build_ret_void builder 
                              (* Build return statement *)
                            | _ -> L.build_ret (expr builder e) builder );
                     builder
      | SIf (predicate, then_stmt, else_stmt) ->
         let bool_val = expr builder predicate in
   let merge_bb = L.append_block context "merge" the_function in
         let build_br_merge = L.build_br merge_bb in (* partial function *)

   let then_bb = L.append_block context "then" the_function in
   add_terminal (stmt (L.builder_at_end context then_bb) then_stmt)
     build_br_merge;

   let else_bb = L.append_block context "else" the_function in
   add_terminal (stmt (L.builder_at_end context else_bb) else_stmt)
     build_br_merge;

   ignore(L.build_cond_br bool_val then_bb else_bb builder);
   L.builder_at_end context merge_bb

      | SWhile (predicate, body) ->
    let pred_bb = L.append_block context "while" the_function in
    ignore(L.build_br pred_bb builder);

    let body_bb = L.append_block context "while_body" the_function in
    add_terminal (stmt (L.builder_at_end context body_bb) body)
      (L.build_br pred_bb);

    let pred_builder = L.builder_at_end context pred_bb in
    let bool_val = expr pred_builder predicate in

    let merge_bb = L.append_block context "merge" the_function in
    ignore(L.build_cond_br bool_val body_bb merge_bb pred_builder);
    L.builder_at_end context merge_bb

      (* Implement for loops as while loops *)
      | SFor (e1, e2, e3, body) -> stmt builder
      ( SBlock [SExpr e1 ; SWhile (e2, SBlock [body ; SExpr e3]) ] )
    in

    (* Build the code for each statement in the function *)
    let builder = stmt builder (SBlock fdecl.sbody) in

    (* Add a return if the last block falls off the end *)
    add_terminal builder (match fdecl.styp with
        A.Void -> L.build_ret_void
      | A.Float -> L.build_ret (L.const_float float_t 0.0)
      | t -> L.build_ret (L.const_int (ltype_of_typ t) 0))
  in

  List.iter build_function_body functions;
  the_module
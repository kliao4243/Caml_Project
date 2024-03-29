(* Semantic checking for the CAML compiler *)
(* Authors: Yuanji Huang, Kunjian Liao, Yipeng Zhang *)
open Ast
open Sast

module StringMap = Map.Make(String)

(* Semantic checking of the AST. Returns an SAST if successful,
   throws an exception if something is wrong.

   Check each global variable, then check each function *)

let check program = 

  (* Verify a list of bindings has no void types or duplicate names *)
  let check_binds (kind : string) (binds : bind_value list) =
    List.iter (function
	    (Void, b, _) -> raise (Failure ("illegal void " ^ kind ^ " " ^ b))
      | (_,_,_) -> ()) 
    binds;

    let rec dups = function
        [] -> ()
      |	((_,n1,_) :: (_,n2,_) :: _) when n1 = n2 ->
	  raise (Failure ("duplicate " ^ kind ^ " " ^ n1))
      | _ :: t -> dups t
    in dups (List.sort (fun (_,a,_) (_,b,_) -> compare a b) binds)
  in

  (**** Check global variables ****)
  check_binds "global" program.globals;

  (**** Check functions ****)

  let rec add_all_include (all_program: Ast.program) : Ast.program = 
    let add_current_include (current_program: Ast.program)(Ast.Include(incl) : Ast.include_decl) : Ast.program= 
      let file_in = open_in incl in
      let lexbuf = Lexing.from_channel file_in in
      let import_program = Parser.program Scanner.token lexbuf in
      let (after_import_program: Ast.program) = add_all_include import_program in
      ignore(close_in file_in);
      {
        globals = current_program.globals;
        functions = after_import_program.functions@current_program.functions;
        structs = after_import_program.structs@current_program.structs; 
        includes = after_import_program.includes
      }
    in List.fold_left add_current_include all_program all_program.includes
  in

  let program_with_include = add_all_include program
  in

  (* Collect function declarations for built-in functions: no bodies *)
  let built_in_decls = 
    let add_bind map (ftype, name, param_list) = StringMap.add name {
      typ = ftype;
      fname = name;
      formals = param_list;
      locals = [];
      body = []
    } map in 
    let builtin_funcs = 
    [(Void, "print", [(Int,"x",Noexpr)]);
      (Void, "printb", [(Bool,"x",Noexpr)]);
      (Void, "printbig", [(Int,"x",Noexpr)]);
      (Void, "prints", [(String,"x",Noexpr)]);
      (Void, "printp", [(Pitch,"x",Noexpr)]);
      (Int, "pitch_to_int", [(Pitch,"x",Noexpr)]);
      (Int, "random", [(Int,"x",Noexpr)]);
      (Pitch, "up_8", [(Pitch,"x",Noexpr)]);
      (Pitch, "down_8", [(Pitch,"x",Noexpr)])]
    in 
    List.fold_left add_bind StringMap.empty builtin_funcs
  in
  (* Add function name to symbol table *)
  let add_func map fd = 
    let built_in_err = "function " ^ fd.fname ^ " may not be defined"
    and dup_err = ":duplicate function " ^ fd.fname
    and make_err er = raise (Failure er)
    and n = fd.fname (* Name of the function *)
    in match fd with (* No duplicate functions or redefinitions of built-ins *)
         _ when StringMap.mem n built_in_decls -> make_err built_in_err
       | _ when StringMap.mem n map -> make_err dup_err  
       | _ ->  StringMap.add n fd map 
  in

  (* Collect all function names into one symbol table *)
  let function_decls = List.fold_left add_func built_in_decls program_with_include.functions
  in
  
  (* Return a function from our symbol table *)
  let find_func s = 
    try StringMap.find s function_decls
    with Not_found -> raise (Failure ("unrecognized function " ^ s))
  in

  let add_struct map sd = 
    let n = sd.struct_name
    and dup_err = "duplicate struct " ^ sd.struct_name
    and make_err er = raise (Failure er)
    in match sd with 
        _ when StringMap.mem n map -> make_err dup_err 
      | _ -> StringMap.add n sd map
  in
  (* Collect all struct names into one symbol table *)
  let struct_decls = List.fold_left add_struct StringMap.empty program_with_include.structs
  in

  let find_struct s = try StringMap.find s struct_decls
      with Not_found -> raise (Failure ("unrecognized struct " ^ s))
  in

  let _ = find_func "main" in (* Ensure "main" is defined *)

  let check_function func =
    (* Make sure no formals or locals are void or duplicates *)
    check_binds "formal" func.formals;
    check_binds "local" func.locals;

    let add_assign (stmts:stmt list) (local:bind_value) = match local with
      (_,_,Noexpr) -> stmts
     |(_,n,e) -> Expr(Assign((Id(n)),e))::stmts
    in
    let new_body = List.fold_left add_assign func.body (List.rev func.locals)
    in

    (* Raise an exception if the given rvalue type cannot be assigned to
       the given lvalue type *)
    let check_argument lvaluet rvaluet err = match (lvaluet,rvaluet) with
      (Array(t1 ,_), Array(t2, _)) -> if t1 = t2 then rvaluet else raise (Failure err)
      | _ -> if lvaluet = rvaluet then rvaluet else raise (Failure err)
    in   
    let check_equal lvaluet rvaluet = match (lvaluet,rvaluet) with
      (Array(t1,_),Array(t2,_)) -> t1 = t2 
      | _ -> lvaluet = rvaluet
    in
    (* Build local symbol table of variables for this function *)
    let symbols = List.fold_left (fun m (ty, name, _) -> StringMap.add name ty m)
	                StringMap.empty (program_with_include.globals @ func.formals @ func.locals )
    in

    (* Return a variable from our local symbol table *)
    let type_of_identifier s =
      try StringMap.find s symbols
      with Not_found -> raise (Failure ("undeclared identifier " ^ s))
    in

    (* Return a semantically-checked expression, i.e., with a type *)
    let rec expr = function
        Literal  l -> (Int, SLiteral l)
      | Fliteral l -> (Float, SFliteral l)
      | BoolLit l  -> (Bool, SBoolLit l)
      | Sliteral l -> (String, SSliteral l)
      | Pliteral l -> (Pitch, SPliteral l)
      | Noexpr     -> (Void, SNoexpr)
      | Id s       -> (type_of_identifier s, SId s)


      | Assign(left_e, right_e) as ex -> 
          let (lt, e1) = expr left_e 
          and (rt, e2) = expr right_e in
          let err = "illegal assignment " ^ string_of_typ lt ^ " = " ^ 
            string_of_typ rt ^ " in " ^ string_of_expr ex
          in (check_argument lt rt err, SAssign((lt, e1), (rt, e2)))
      
      | Unop(op, e) as ex -> 
          let (t, e') = expr e in
          let ty = match op with
            Neg when t = Int || t = Float -> t
          | Not when t = Bool -> Bool
          | _ -> raise (Failure ("illegal unary operator " ^ 
                                 string_of_uop op ^ string_of_typ t ^
                                 " in " ^ string_of_expr ex))
          in (ty, SUnop(op, (t, e')))

      

      | Binop(e1, op, e2) as e -> 
        let (t1, e1') = expr e1 
        and (t2, e2') = expr e2 in 
        let same = check_equal t1 t2 in
          let ty = (match op with
            Add | Sub | Mult | Div | Mod when same && t1 = Int   -> Int
          | Add | Sub | Mult | Div | Mod when same && t1 = Float -> Float
          | Equal | Neq            when same               -> Bool
          | Less | Leq | Greater | Geq
                     when same && (t1 = Int || t1 = Float) -> Bool
          | And | Or when same && t1 = Bool -> Bool
          | Con when same -> (match (t1,t2) with (Array(typ, sz1), Array(_, sz2))-> Array(typ,sz1+sz2)
                                                | _-> raise (Failure"illegal binary operator concat"))
          | _ -> raise (
            Failure ("illegal binary operator " ^
                       string_of_typ t1 ^ " " ^ string_of_op op ^ " " ^
                       string_of_typ t2 ^ " in " ^ string_of_expr e)))
          in (ty, SBinop((t1, e1'), op, (t2, e2')))
          (* Determine expression type based on operator and operand types *)
      | Call(fname, args) as call -> 
          (match fname with 
          | "size" | "print" -> 
              let args' = List.map expr args in
                      (Int, SCall (fname, args'))
          | _ ->
            let fd = find_func fname in
            let param_length = List.length fd.formals in
            if List.length args != param_length then
              raise (Failure ("expecting " ^ string_of_int param_length ^ 
                              " arguments in " ^ string_of_expr call))
            else let check_call (ft, _, _) e = 
              let (et, e') = expr e in 
              let err = "illegal argument found " ^ string_of_typ et ^
                " expected " ^ string_of_typ ft ^ " in " ^ string_of_expr e
              in (check_argument ft et err, e')
            in 
            let args' = List.map2 check_call fd.formals args
          in (fd.typ, SCall(fname, args')))
      | StructAccess(s, m) as sacc ->
        let ss = expr s in
        let s_type = fst ss in
        let sd = find_struct (string_of_typ s_type) 
        in
          let members = List.fold_left (fun m (t,n,_) -> StringMap.add n t m) StringMap.empty sd.members in
          (* Iterate through the members of the struct; if name found, return its type, else fail *)
          (try let tem = StringMap.find m members in 
           (tem, SStructAccess(ss,m)) 
           with Not_found -> raise (Failure ("illegal member " ^ m ^ " of struct " ^ string_of_expr sacc)))
      | ArrayLit vals ->
         let length = List.length vals in
         let (t',_) = expr (List.hd vals) in
         let map_func lit = expr lit in
         let vals' = List.map map_func vals in
         (* TODO: check that all vals are of the same type *)
         (Array (t',length), SArrayLit(vals'))
      | ArrayAccess (var, idx) ->   
        let (t1, se1) = expr var in
        let (t2, se2) = expr idx in
        
        let t3 = match t1 with 
            Array(t, _) -> t 
          | _ -> raise (Failure ("not an array"))
        in
        if t2 = Int then (t3, SArrayAccess((t1, se1), (t2, se2)))
        else raise (Failure ("can't access array with non-integer type"))      
    in

    let check_bool_expr e = 
      let (t', e') = expr e
      and err = "expected Boolean expression in " ^ string_of_expr e
      in if t' != Bool then raise (Failure err) else (t', e') 
    in

    (* Return a semantically-checked statement i.e. containing sexprs *)
    let rec check_stmt = function
        Expr e -> SExpr (expr e)
      | If(p, b1, b2) -> SIf(check_bool_expr p, check_stmt b1, check_stmt b2)
      | For(e1, e2, e3, st) ->
	      SFor(expr e1, check_bool_expr e2, expr e3, check_stmt st)
      | While(p, s) -> SWhile(check_bool_expr p, check_stmt s)
      | Return e -> let (t, e') = expr e in
        if t = func.typ then SReturn (t, e') 
        else raise (Failure ("return gives " ^ string_of_typ t ^ " expected " ^
		   string_of_typ func.typ ^ " in " ^ string_of_expr e))

	    (* A block is correct if each statement is correct and nothing
	       follows any Return statement.  Nested blocks are flattened. *)
      | Block sl -> 
          let rec check_stmt_list = function
              [Return _ as s] -> [check_stmt s]
            | Return _ :: _   -> raise (Failure "nothing may follow a return")
            | Block sl :: ss  -> check_stmt_list (sl @ ss) (* Flatten blocks *)
            | s :: ss         -> check_stmt s :: check_stmt_list ss
            | []              -> []
          in SBlock(check_stmt_list sl)

    in (* body of check_function *)
    { styp = func.typ;
      sfname = func.fname;
      sformals = func.formals;
      slocals  = func.locals;
      sbody = match check_stmt (Block new_body) with
	SBlock(sl) -> sl
      | _ -> raise (Failure ("internal error: block didn't become a block?"))
    }
  in

  let check_struct struc = 
  { 
    sstruct_name = struc.struct_name;
    smembers = struc.members;
  }
  in

  { 
    sglobals = program_with_include.globals;
    sfunctions = List.map check_function program_with_include.functions;
    sstructs = List.map check_struct program_with_include.structs;
  }
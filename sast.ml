(* Semantically-checked Abstract Syntax Tree and functions for printing it *)

open Ast

type sexpr = typ * sx
and sx =
    SLiteral of int
  | SFliteral of string
  | SBoolLit of bool
  | SSliteral of string
  | SPliteral of string
  | SId of string
  | SBinop of sexpr * op * sexpr
  | SUnop of uop * sexpr
  | SAssign of sexpr * sexpr
  | SCall of string * sexpr list
  | SStructAccess of sexpr * string
  | SArrayLit of sexpr list
  | SArrayAccess of sexpr * sexpr
  | SNoexpr

type sstmt =
    SBlock of sstmt list
  | SExpr of sexpr
  | SReturn of sexpr
  | SIf of sexpr * sstmt * sstmt
  | SFor of sexpr * sexpr * sexpr * sstmt
  | SWhile of sexpr * sstmt
  | SVdec of typ * string * sexpr

type sfunc_decl = {
    styp : typ;
    sfname : string;
    sformals : bind_value list;
    slocals : bind_value list;
    sbody : sstmt list;
  }

type sstruct_decl = {
    smembers: bind_value list;
    sstruct_name: string;
  }

type sprogram = {
    sglobals: bind_value list;
    sfunctions: sfunc_decl list;
    sstructs: sstruct_decl list;
}

(* Pretty-printing functions *)

let rec string_of_sexpr (t, e) =
  "(" ^ string_of_typ t ^ " : " ^ (match e with
    SLiteral(l) -> string_of_int l
  | SSliteral(l) -> l
  | SBoolLit(true) -> "true"
  | SBoolLit(false) -> "false"
  | SFliteral(l) -> l
  | SPliteral(l) -> l
  | SId(s) -> s
  | SBinop(e1, o, e2) ->
      string_of_sexpr e1 ^ " " ^ string_of_op o ^ " " ^ string_of_sexpr e2
  | SUnop(o, e) -> string_of_uop o ^ string_of_sexpr e
  | SAssign(e1, e2) -> string_of_sexpr e1 ^ " = " ^ string_of_sexpr e2
  | SCall(f, el) ->
      f ^ "(" ^ String.concat ", " (List.map string_of_sexpr el) ^ ")"
  | SStructAccess(s, n) ->
    (string_of_sexpr s) ^ "." ^ n
  | SArrayLit(_) -> "array_literal"
  | SArrayAccess(e1, e2) -> "sarray_access "^string_of_sexpr e1 ^ " " ^string_of_sexpr e2
  | SNoexpr -> ""
				  ) ^ ")"				     

let rec string_of_sstmt = function
    SBlock(stmts) ->
      "{\n" ^ String.concat "" (List.map string_of_sstmt stmts) ^ "}\n"
  | SExpr(expr) -> string_of_sexpr expr ^ ";\n";
  | SReturn(expr) -> "return " ^ string_of_sexpr expr ^ ";\n";
  | SIf(e, s, SBlock([])) ->
      "if (" ^ string_of_sexpr e ^ ")\n" ^ string_of_sstmt s
  | SIf(e, s1, s2) ->  "if (" ^ string_of_sexpr e ^ ")\n" ^
      string_of_sstmt s1 ^ "else\n" ^ string_of_sstmt s2
  | SFor(e1, e2, e3, s) ->
      "for (" ^ string_of_sexpr e1  ^ " ; " ^ string_of_sexpr e2 ^ " ; " ^
      string_of_sexpr e3  ^ ") " ^ string_of_sstmt s
  | SWhile(e, s) -> "while (" ^ string_of_sexpr e ^ ") " ^ string_of_sstmt s
  | SVdec(t,id,e) -> string_of_typ t ^ " " ^ id ^ " " ^ (string_of_sexpr e) ^ ";\n"

let get_second (t, id, expr) = id

let string_of_sfdecl fdecl =
  string_of_typ fdecl.styp ^ " " ^
  fdecl.sfname ^ "(" ^ String.concat ", " (List.map get_second fdecl.sformals) ^
  ")\n{\n" ^
  String.concat "" (List.map string_of_vdecl fdecl.slocals) ^
  String.concat "" (List.map string_of_sstmt fdecl.sbody) ^
  "}\n"

let string_of_ssdecl sdecl =
  "struct " ^ sdecl.sstruct_name ^ "\n" ^
  "{\n" ^ 
  String.concat "" (List.map string_of_vdecl sdecl.smembers) ^
  "}\n"

let string_of_sprogram sprogram =
  String.concat "" (List.map string_of_vdecl sprogram.sglobals) ^ "\n" ^
  String.concat "\n" (List.map string_of_sfdecl sprogram.sfunctions) ^
  String.concat "\n" (List.map string_of_ssdecl sprogram.sstructs)

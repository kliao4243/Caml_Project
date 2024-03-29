(* Abstract Syntax Tree and functions for printing it *)
(* Authors: Yuanji Huang, Kunjian Liao, Yipeng Zhang*)

type op = Add | Sub | Mult | Div | Con | Equal | Neq | Less | Leq | Greater | Geq |
          And | Or | Mod

type uop = Neg | Not

type typ = Int | Bool | Float | Void | String | Pitch | Array of typ * int | Struct of string

type expr =
    Literal of int
  | Fliteral of string
  | BoolLit of bool
  | Sliteral of string
  | Pliteral of string
  | ArrayLit of expr list
  | ArrayAccess of expr * expr
  | Id of string
  | Binop of expr * op * expr
  | Unop of uop * expr
  | Assign of expr * expr
  | Call of string * expr list
  | StructAccess of expr * string
  | Noexpr

type bind_value = typ * string * expr

type stmt =
    Block of stmt list
  | Expr of expr
  | Return of expr
  | If of expr * stmt * stmt
  | For of expr * expr * expr * stmt
  | While of expr * stmt

type func_decl = {
    typ : typ;
    fname : string;
    formals : bind_value list;
    locals : bind_value list;
    body : stmt list;
  }

type struct_decl = {
    members: bind_value list;
    struct_name: string;
  }

type include_decl = Include of string

type program = {
    globals: bind_value list;
    functions: func_decl list;
    structs: struct_decl list;
    includes: include_decl list;
}




(* Pretty-printing functions *)
(* todo: support struct print*)
let string_of_op = function
    Add -> "+"
  | Sub -> "-"
  | Mult -> "*"
  | Div -> "/"
  | Con -> "@"
  | Equal -> "=="
  | Neq -> "!="
  | Less -> "<"
  | Leq -> "<="
  | Greater -> ">"
  | Geq -> ">="
  | And -> "&&"
  | Or -> "||"
  | Mod -> "%"

let string_of_uop = function
    Neg -> "-"
  | Not -> "!"

let rec string_of_expr = function
    Literal(l) -> string_of_int l
  | Fliteral(l) -> l
  | Sliteral(l) -> l
  | Pliteral(l) -> l
  | BoolLit(true) -> "true"
  | BoolLit(false) -> "false"
  | ArrayLit(el) -> "[" ^ String.concat ", " (List.map string_of_expr el) ^ "]"
  | ArrayAccess(s,e) -> "Array_access" ^ " "^ string_of_expr s ^ " " ^string_of_expr e
  | Id(s) -> s
  | Binop(e1, o, e2) ->
      string_of_expr e1 ^ " " ^ string_of_op o ^ " " ^ string_of_expr e2
  | Unop(o, e) -> string_of_uop o ^ string_of_expr e
  | Assign(e1, e2) -> string_of_expr e1 ^ " = " ^ string_of_expr e2
  | Call(f, el) ->
      f ^ "(" ^ String.concat ", " (List.map string_of_expr el) ^ ")"
  | StructAccess(s, n) ->
    (string_of_expr s) ^ "." ^ n
  | Noexpr -> ""

let rec string_of_typ = function
    Int -> "int"
  | Bool -> "bool"
  | Float -> "float"
  | Void -> "void"
  | String -> "string"
  | Array (x,size) -> (string_of_typ x) ^ "["^(string_of_int size)^"]" 
  | Pitch -> "Pitch"
  | Struct(id) -> id

let rec string_of_stmt = function
    Block(stmts) ->
      "{\n" ^ String.concat "" (List.map string_of_stmt stmts) ^ "}\n"
  | Expr(expr) -> string_of_expr expr ^ ";\n";
  | Return(expr) -> "return " ^ string_of_expr expr ^ ";\n";
  | If(e, s, Block([])) -> "if (" ^ string_of_expr e ^ ")\n" ^ string_of_stmt s
  | If(e, s1, s2) ->  "if (" ^ string_of_expr e ^ ")\n" ^
      string_of_stmt s1 ^ "else\n" ^ string_of_stmt s2
  | For(e1, e2, e3, s) ->
      "for (" ^ string_of_expr e1  ^ " ; " ^ string_of_expr e2 ^ " ; " ^
      string_of_expr e3  ^ ") " ^ string_of_stmt s
  | While(e, s) -> "while (" ^ string_of_expr e ^ ") " ^ string_of_stmt s


let string_of_vdecl (t, id, _) = string_of_typ t ^ " " ^ id ^ ";\n" 

let get_second (_, id, _) = id

let string_of_fdecl fdecl =
  string_of_typ fdecl.typ ^ " " ^
  fdecl.fname ^ "(" ^ String.concat ", " (List.map get_second fdecl.formals) ^
  ")\n{\n" ^
  String.concat "" (List.map string_of_vdecl fdecl.locals) ^
  String.concat "" (List.map string_of_stmt fdecl.body) ^
  "}\n"

let string_of_sdecl sdecl =
  "struct " ^ sdecl.struct_name ^ "\n" ^
  "{\n" ^ 
  String.concat "" (List.map string_of_vdecl sdecl.members) ^
  "}\n"

let string_of_include = function
  Include(s) -> "#include<" ^ s ^ ">;\n"

let string_of_program program = 
  String.concat "" (List.map string_of_include program.includes) ^
  String.concat "\n" (List.map string_of_vdecl program.globals) ^ 
  String.concat "\n" (List.map string_of_fdecl program.functions) ^
  String.concat "\n" (List.map string_of_sdecl program.structs)

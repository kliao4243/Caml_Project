/* Ocamlyacc parser for MicroC */

%{
open Ast
%}
%token QUOTE APOSTROPHE COLON LSQUARE RSQUARE CONCAT
%token SEMI LPAREN RPAREN LBRACE RBRACE COMMA PLUS MINUS TIMES DIVIDE MOD ASSIGN
%token NOT EQ NEQ LT LEQ GT GEQ AND OR DOT
%token RETURN IF ELSE FOR WHILE INT BOOL FLOAT VOID STR PITCH STRUCT
%token <int> LITERAL
%token <bool> BLIT
%token <string> ID FLIT SLIT PLIT STLIT
%token ARRAY
%token EOF

%start program
%type <Ast.program> program

%nonassoc NOELSE
%nonassoc ELSE
%right ASSIGN
%left OR
%left AND 
%left EQ NEQ 
%left LT GT LEQ GEQ
%left PLUS MINUS
%left TIMES DIVIDE MOD
%left CONCAT LSQUARE RSQUARE 
%right NOT
%left DOT
%%

program:
	decls EOF { $1 }

decls:
   /* nothing */ { {globals=[]; functions=[]; structs=[]} }
 | decls vdecl { {globals = ($2 :: $1.globals); functions = $1.functions; structs = $1.structs} }
 | decls fdecl { {globals = $1.globals; functions = ($2 :: $1.functions); structs = $1.structs} }
 | decls sdecl { {globals = $1.globals; functions = $1.functions; structs = ($2 :: $1.structs)} }

vdecl:
   typ ID SEMI { ($1, $2, Noexpr) }
   | typ ID ASSIGN expr SEMI { ($1, $2, $4) }

vdecl_list:
    /* nothing */    { [] }
  | vdecl_list vdecl { $2 :: $1 }

fdecl:
	 typ ID LPAREN formals_opt RPAREN LBRACE vdecl_list stmt_list RBRACE
		 { { typ = $1;
			 fname = $2;
			 formals = List.rev $4;
			 locals = List.rev $7;
			 body = List.rev $8 } }

sdecl:
  STRUCT STLIT LBRACE vdecl_list RBRACE SEMI
    {
    {
      struct_name = $2;
      members = $4;
    }}

formals_opt:
	/* nothing */ { [] }
	| formal_list   { $1 }

formal_list:
		typ ID                   { [($1,$2,Noexpr)]     }
	| formal_list COMMA typ ID { ($3,$4,Noexpr) :: $1 }

typ:
    INT   { Int   }
  | BOOL  { Bool  }
  | FLOAT { Float }
  | VOID  { Void  }
  | STR   { String }
  | PITCH { Pitch }
  | STLIT { Struct($1) }
  | typ LSQUARE LITERAL RSQUARE { Array($1,$3) }
  | typ LSQUARE RSQUARE { Array($1,-1) }

stmt_list:
		/* nothing */  { [] }
	| stmt_list stmt { $2 :: $1 }

stmt:
	expr SEMI                                 { Expr $1               }
	| RETURN expr_opt SEMI                    { Return $2             }
	| LBRACE stmt_list RBRACE                 { Block(List.rev $2)    }
	| IF LPAREN expr RPAREN stmt %prec NOELSE { If($3, $5, Block([])) }
	| IF LPAREN expr RPAREN stmt ELSE stmt    { If($3, $5, $7)        }
	| FOR LPAREN expr_opt SEMI expr SEMI expr_opt RPAREN stmt										  { For($3, $5, $7, $9)   }
	| WHILE LPAREN expr RPAREN stmt           { While($3, $5)         }

expr_opt:
	/* nothing */ { Noexpr }
	| expr          { $1 }

expr:
	  LITERAL          { Literal($1)            }
	| FLIT	           { Fliteral($1)           }
	| BLIT             { BoolLit($1)            }
	| SLIT             { Sliteral($1)           }
	| PLIT             { Pliteral($1)           }
	| ID               { Id($1)                 }
	| expr PLUS   expr { Binop($1, Add,   $3)   }
	| expr MINUS  expr { Binop($1, Sub,   $3)   }
	| expr TIMES  expr { Binop($1, Mult,  $3)   }
	| expr DIVIDE expr { Binop($1, Div,   $3)   }
	| expr CONCAT expr { Binop($1, Con,   $3)   }
	| expr MOD    expr { Binop($1, Mod,   $3)   }

	| expr EQ     expr { Binop($1, Equal, $3)   }
	| expr NEQ    expr { Binop($1, Neq,   $3)   }
	| expr LT     expr { Binop($1, Less,  $3)   }
	| expr LEQ    expr { Binop($1, Leq,   $3)   }
	| expr GT     expr { Binop($1, Greater, $3) }
	| expr GEQ    expr { Binop($1, Geq,   $3)   }
	| expr AND    expr { Binop($1, And,   $3)   }
	| expr OR     expr { Binop($1, Or,    $3)   }
	| expr DOT ID      { StructAccess($1, $3)   }
	| expr LSQUARE expr RSQUARE { ArrayAccess($1, $3) }
	| MINUS expr %prec NOT { Unop(Neg, $2)      }
	| NOT expr         { Unop(Not, $2)          }
	| expr ASSIGN expr { Assign($1, $3)         }
	| ID LPAREN args_opt RPAREN { Call($1, $3)  }
	| LPAREN expr RPAREN { $2                   }
	| LSQUARE args_opt RSQUARE   { ArrayLit($2) }

args_opt:
		/* nothing */ { [] }
	| args_list  { List.rev $1 }

args_list:
		expr                    { [$1] }
	| args_list COMMA expr { $3 :: $1 }

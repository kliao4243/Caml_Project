type token =
  | QUOTE
  | APOSTROPHE
  | COLON
  | SEMI
  | LPAREN
  | RPAREN
  | LBRACE
  | RBRACE
<<<<<<< HEAD
  | LSQUARE
  | RSQUARE
=======
>>>>>>> 1e06a6d08ee4328c25e27a278fddf5eedc70f469
  | COMMA
  | PLUS
  | MINUS
  | TIMES
  | DIVIDE
  | MOD
  | ASSIGN
  | NOT
  | EQ
  | NEQ
  | LT
  | LEQ
  | GT
  | GEQ
  | AND
  | OR
  | RETURN
  | IF
  | ELSE
  | FOR
  | WHILE
  | INT
  | BOOL
  | FLOAT
  | VOID
  | STR
<<<<<<< HEAD
=======
  | PITCH
>>>>>>> 1e06a6d08ee4328c25e27a278fddf5eedc70f469
  | LITERAL of (int)
  | BLIT of (bool)
  | ID of (string)
  | FLIT of (string)
  | SLIT of (string)
<<<<<<< HEAD
  | ARRAY
=======
  | PLIT of (string)
>>>>>>> 1e06a6d08ee4328c25e27a278fddf5eedc70f469
  | EOF

val program :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Ast.program

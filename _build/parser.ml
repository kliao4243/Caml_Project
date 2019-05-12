type token =
  | QUOTE
  | APOSTROPHE
  | COLON
  | LSQUARE
  | RSQUARE
  | SEMI
  | LPAREN
  | RPAREN
  | LBRACE
  | RBRACE
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
  | DOT
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
  | PITCH
  | STRUCT
  | LITERAL of (int)
  | BLIT of (bool)
  | ID of (string)
  | FLIT of (string)
  | SLIT of (string)
  | PLIT of (string)
  | STLIT of (string)
  | ARRAY
  | EOF

open Parsing;;
let _ = parse_error;;
# 4 "parser.mly"
open Ast
# 56 "parser.ml"
let yytransl_const = [|
  257 (* QUOTE *);
  258 (* APOSTROPHE *);
  259 (* COLON *);
  260 (* LSQUARE *);
  261 (* RSQUARE *);
  262 (* SEMI *);
  263 (* LPAREN *);
  264 (* RPAREN *);
  265 (* LBRACE *);
  266 (* RBRACE *);
  267 (* COMMA *);
  268 (* PLUS *);
  269 (* MINUS *);
  270 (* TIMES *);
  271 (* DIVIDE *);
  272 (* MOD *);
  273 (* ASSIGN *);
  274 (* NOT *);
  275 (* EQ *);
  276 (* NEQ *);
  277 (* LT *);
  278 (* LEQ *);
  279 (* GT *);
  280 (* GEQ *);
  281 (* AND *);
  282 (* OR *);
  283 (* DOT *);
  284 (* RETURN *);
  285 (* IF *);
  286 (* ELSE *);
  287 (* FOR *);
  288 (* WHILE *);
  289 (* INT *);
  290 (* BOOL *);
  291 (* FLOAT *);
  292 (* VOID *);
  293 (* STR *);
  294 (* PITCH *);
  295 (* STRUCT *);
  303 (* ARRAY *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  296 (* LITERAL *);
  297 (* BLIT *);
  298 (* ID *);
  299 (* FLIT *);
  300 (* SLIT *);
  301 (* PLIT *);
  302 (* STLIT *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\002\000\003\000\007\000\007\000\
\004\000\005\000\008\000\008\000\010\000\010\000\006\000\006\000\
\006\000\006\000\006\000\006\000\006\000\006\000\009\000\009\000\
\011\000\011\000\011\000\011\000\011\000\011\000\011\000\013\000\
\013\000\012\000\012\000\012\000\012\000\012\000\012\000\012\000\
\012\000\012\000\012\000\012\000\012\000\012\000\012\000\012\000\
\012\000\012\000\012\000\012\000\012\000\012\000\012\000\012\000\
\012\000\012\000\012\000\012\000\014\000\014\000\015\000\015\000\
\000\000"

let yylen = "\002\000\
\002\000\000\000\002\000\002\000\002\000\003\000\000\000\002\000\
\009\000\006\000\000\000\001\000\002\000\004\000\001\000\001\000\
\001\000\001\000\001\000\001\000\001\000\004\000\000\000\002\000\
\002\000\003\000\003\000\005\000\007\000\009\000\005\000\000\000\
\001\000\001\000\001\000\001\000\001\000\001\000\001\000\003\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\003\000\003\000\004\000\002\000\002\000\
\003\000\004\000\003\000\003\000\000\000\001\000\001\000\003\000\
\002\000"

let yydefred = "\000\000\
\002\000\000\000\065\000\000\000\015\000\016\000\017\000\018\000\
\019\000\020\000\000\000\021\000\000\000\001\000\003\000\004\000\
\005\000\000\000\000\000\000\000\000\000\007\000\000\000\006\000\
\000\000\000\000\022\000\000\000\000\000\000\000\000\000\008\000\
\000\000\013\000\000\000\000\000\010\000\000\000\007\000\000\000\
\000\000\014\000\000\000\000\000\000\000\023\000\009\000\000\000\
\000\000\000\000\000\000\000\000\000\000\034\000\036\000\000\000\
\035\000\037\000\038\000\024\000\000\000\000\000\000\000\000\000\
\000\000\000\000\055\000\056\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\025\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\060\000\000\000\059\000\027\000\026\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\042\000\
\043\000\044\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\053\000\000\000\000\000\000\000\000\000\
\058\000\054\000\000\000\000\000\031\000\000\000\000\000\029\000\
\000\000\000\000\030\000"

let yydgoto = "\002\000\
\003\000\004\000\032\000\016\000\017\000\033\000\026\000\029\000\
\043\000\030\000\060\000\061\000\070\000\063\000\064\000"

let yysindex = "\003\000\
\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\
\000\000\000\000\229\254\000\000\013\255\000\000\000\000\000\000\
\000\000\007\255\060\255\037\255\059\255\000\000\053\255\000\000\
\037\255\177\255\000\000\038\255\079\255\078\255\094\255\000\000\
\062\255\000\000\089\255\037\255\000\000\101\255\000\000\069\255\
\037\255\000\000\050\255\190\255\190\255\000\000\000\000\190\255\
\190\255\190\255\107\255\108\255\118\255\000\000\000\000\119\255\
\000\000\000\000\000\000\000\000\002\000\181\000\133\255\135\255\
\001\255\092\255\000\000\000\000\181\000\143\255\190\255\190\255\
\190\255\190\255\190\255\000\000\190\255\190\255\190\255\190\255\
\190\255\190\255\190\255\190\255\190\255\190\255\190\255\190\255\
\190\255\190\255\105\255\000\000\190\255\000\000\000\000\000\000\
\037\000\147\255\061\000\150\255\085\000\252\254\252\254\000\000\
\000\000\000\000\181\000\204\255\204\255\186\255\186\255\186\255\
\186\255\067\001\045\001\000\000\181\000\148\255\190\255\148\255\
\000\000\000\000\126\255\109\000\000\000\148\255\190\255\000\000\
\152\255\148\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\156\255\000\000\000\000\000\000\000\000\159\255\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\099\255\000\000\000\000\166\255\000\000\000\000\000\000\000\000\
\000\000\168\255\000\000\000\000\000\000\000\000\000\000\232\255\
\000\000\000\000\000\000\000\000\000\000\056\255\000\000\048\255\
\000\000\000\000\000\000\000\000\080\255\000\000\000\000\168\255\
\000\000\167\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\133\000\157\000\000\000\
\000\000\000\000\157\255\091\001\115\001\205\000\229\000\253\000\
\021\001\119\001\141\001\000\000\111\255\000\000\000\000\000\000\
\000\000\000\000\141\255\000\000\000\000\000\000\170\255\000\000\
\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\191\000\000\000\000\000\093\000\165\000\000\000\
\150\000\000\000\188\255\214\255\184\255\131\000\000\000"

let yytablesize = 679
let yytable = "\098\000\
\014\000\062\000\065\000\001\000\075\000\067\000\068\000\069\000\
\094\000\079\000\080\000\081\000\077\000\078\000\079\000\080\000\
\081\000\082\000\019\000\083\000\084\000\085\000\086\000\087\000\
\088\000\089\000\090\000\091\000\097\000\069\000\099\000\062\000\
\101\000\020\000\102\000\103\000\104\000\105\000\106\000\107\000\
\108\000\109\000\110\000\111\000\112\000\113\000\114\000\115\000\
\021\000\123\000\117\000\125\000\062\000\044\000\129\000\062\000\
\045\000\128\000\046\000\047\000\063\000\131\000\048\000\063\000\
\024\000\025\000\063\000\049\000\022\000\005\000\006\000\007\000\
\008\000\009\000\010\000\027\000\124\000\050\000\051\000\034\000\
\052\000\053\000\012\000\013\000\069\000\033\000\035\000\033\000\
\036\000\054\000\055\000\056\000\057\000\058\000\059\000\044\000\
\018\000\039\000\045\000\037\000\046\000\095\000\023\000\038\000\
\048\000\023\000\024\000\023\000\023\000\049\000\042\000\023\000\
\023\000\071\000\072\000\064\000\023\000\028\000\064\000\050\000\
\051\000\064\000\052\000\053\000\073\000\074\000\023\000\023\000\
\040\000\023\000\023\000\054\000\055\000\056\000\057\000\058\000\
\059\000\092\000\023\000\023\000\023\000\023\000\023\000\023\000\
\028\000\093\000\116\000\028\000\096\000\028\000\028\000\044\000\
\119\000\028\000\045\000\126\000\046\000\121\000\028\000\130\000\
\048\000\057\000\057\000\011\000\057\000\049\000\012\000\057\000\
\028\000\028\000\061\000\028\000\028\000\032\000\061\000\050\000\
\051\000\032\000\052\000\053\000\028\000\028\000\028\000\028\000\
\028\000\028\000\031\000\054\000\055\000\056\000\057\000\058\000\
\059\000\044\000\015\000\066\000\045\000\077\000\078\000\079\000\
\080\000\081\000\048\000\041\000\100\000\000\000\000\000\049\000\
\000\000\005\000\006\000\007\000\008\000\009\000\010\000\077\000\
\078\000\079\000\080\000\081\000\000\000\000\000\012\000\013\000\
\085\000\086\000\087\000\088\000\000\000\054\000\055\000\056\000\
\057\000\058\000\059\000\039\000\039\000\039\000\000\000\039\000\
\000\000\000\000\039\000\039\000\039\000\039\000\039\000\039\000\
\039\000\000\000\039\000\039\000\039\000\039\000\039\000\039\000\
\039\000\039\000\039\000\000\000\000\000\075\000\000\000\076\000\
\000\000\000\000\000\000\000\000\000\000\077\000\078\000\079\000\
\080\000\081\000\082\000\000\000\083\000\084\000\085\000\086\000\
\087\000\088\000\089\000\090\000\091\000\000\000\000\000\000\000\
\000\000\005\000\006\000\007\000\008\000\009\000\010\000\011\000\
\075\000\000\000\000\000\000\000\118\000\000\000\012\000\013\000\
\077\000\078\000\079\000\080\000\081\000\082\000\000\000\083\000\
\084\000\085\000\086\000\087\000\088\000\089\000\090\000\091\000\
\075\000\000\000\000\000\000\000\120\000\000\000\000\000\000\000\
\077\000\078\000\079\000\080\000\081\000\082\000\000\000\083\000\
\084\000\085\000\086\000\087\000\088\000\089\000\090\000\091\000\
\075\000\122\000\000\000\000\000\000\000\000\000\000\000\000\000\
\077\000\078\000\079\000\080\000\081\000\082\000\000\000\083\000\
\084\000\085\000\086\000\087\000\088\000\089\000\090\000\091\000\
\075\000\000\000\127\000\000\000\000\000\000\000\000\000\000\000\
\077\000\078\000\079\000\080\000\081\000\082\000\000\000\083\000\
\084\000\085\000\086\000\087\000\088\000\089\000\090\000\091\000\
\040\000\040\000\040\000\000\000\040\000\000\000\000\000\040\000\
\040\000\040\000\000\000\000\000\000\000\040\000\000\000\040\000\
\040\000\040\000\040\000\040\000\040\000\040\000\040\000\040\000\
\041\000\041\000\041\000\000\000\041\000\000\000\000\000\041\000\
\041\000\041\000\000\000\000\000\000\000\041\000\000\000\041\000\
\041\000\041\000\041\000\041\000\041\000\041\000\041\000\041\000\
\075\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\077\000\078\000\079\000\080\000\081\000\082\000\000\000\083\000\
\084\000\085\000\086\000\087\000\088\000\089\000\090\000\091\000\
\047\000\047\000\047\000\000\000\047\000\000\000\000\000\047\000\
\000\000\000\000\000\000\000\000\000\000\047\000\000\000\047\000\
\047\000\047\000\047\000\047\000\047\000\047\000\047\000\047\000\
\048\000\048\000\048\000\000\000\048\000\000\000\000\000\048\000\
\000\000\000\000\000\000\000\000\000\000\048\000\000\000\048\000\
\048\000\048\000\048\000\048\000\048\000\048\000\048\000\048\000\
\049\000\049\000\049\000\000\000\049\000\000\000\000\000\049\000\
\000\000\000\000\000\000\000\000\000\000\049\000\000\000\049\000\
\049\000\049\000\049\000\049\000\049\000\049\000\049\000\049\000\
\050\000\050\000\050\000\000\000\050\000\000\000\000\000\050\000\
\000\000\000\000\000\000\000\000\000\000\050\000\000\000\050\000\
\050\000\050\000\050\000\050\000\050\000\050\000\050\000\050\000\
\075\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\077\000\078\000\079\000\080\000\081\000\000\000\000\000\083\000\
\084\000\085\000\086\000\087\000\088\000\089\000\075\000\091\000\
\000\000\000\000\000\000\000\000\000\000\000\000\077\000\078\000\
\079\000\080\000\081\000\000\000\000\000\083\000\084\000\085\000\
\086\000\087\000\088\000\000\000\000\000\091\000\045\000\045\000\
\045\000\000\000\045\000\000\000\000\000\045\000\000\000\000\000\
\000\000\000\000\000\000\045\000\000\000\045\000\045\000\000\000\
\000\000\000\000\000\000\045\000\045\000\045\000\046\000\046\000\
\046\000\000\000\046\000\051\000\051\000\046\000\051\000\000\000\
\000\000\051\000\000\000\046\000\000\000\046\000\046\000\051\000\
\000\000\000\000\000\000\046\000\046\000\046\000\000\000\051\000\
\051\000\052\000\052\000\000\000\052\000\000\000\000\000\052\000\
\000\000\000\000\000\000\000\000\000\000\052\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\052\000"

let yycheck = "\072\000\
\000\000\044\000\045\000\001\000\004\001\048\000\049\000\050\000\
\008\001\014\001\015\001\016\001\012\001\013\001\014\001\015\001\
\016\001\017\001\046\001\019\001\020\001\021\001\022\001\023\001\
\024\001\025\001\026\001\027\001\071\000\072\000\073\000\074\000\
\075\000\021\001\077\000\078\000\079\000\080\000\081\000\082\000\
\083\000\084\000\085\000\086\000\087\000\088\000\089\000\090\000\
\042\001\118\000\093\000\120\000\005\001\004\001\127\000\008\001\
\007\001\126\000\009\001\010\001\005\001\130\000\013\001\008\001\
\006\001\007\001\011\001\018\001\009\001\033\001\034\001\035\001\
\036\001\037\001\038\001\023\001\119\000\028\001\029\001\042\001\
\031\001\032\001\046\001\047\001\127\000\006\001\008\001\008\001\
\011\001\040\001\041\001\042\001\043\001\044\001\045\001\004\001\
\004\000\009\001\007\001\006\001\009\001\010\001\004\001\042\001\
\013\001\007\001\006\001\009\001\010\001\018\001\042\001\013\001\
\020\000\007\001\007\001\005\001\018\001\025\000\008\001\028\001\
\029\001\011\001\031\001\032\001\007\001\007\001\028\001\029\001\
\036\000\031\001\032\001\040\001\041\001\042\001\043\001\044\001\
\045\001\005\001\040\001\041\001\042\001\043\001\044\001\045\001\
\004\001\011\001\042\001\007\001\006\001\009\001\010\001\004\001\
\006\001\013\001\007\001\030\001\009\001\008\001\018\001\008\001\
\013\001\005\001\006\001\008\001\008\001\018\001\008\001\011\001\
\028\001\029\001\005\001\031\001\032\001\006\001\008\001\028\001\
\029\001\008\001\031\001\032\001\040\001\041\001\042\001\043\001\
\044\001\045\001\010\001\040\001\041\001\042\001\043\001\044\001\
\045\001\004\001\004\000\046\000\007\001\012\001\013\001\014\001\
\015\001\016\001\013\001\039\000\074\000\255\255\255\255\018\001\
\255\255\033\001\034\001\035\001\036\001\037\001\038\001\012\001\
\013\001\014\001\015\001\016\001\255\255\255\255\046\001\047\001\
\021\001\022\001\023\001\024\001\255\255\040\001\041\001\042\001\
\043\001\044\001\045\001\004\001\005\001\006\001\255\255\008\001\
\255\255\255\255\011\001\012\001\013\001\014\001\015\001\016\001\
\017\001\255\255\019\001\020\001\021\001\022\001\023\001\024\001\
\025\001\026\001\027\001\255\255\255\255\004\001\255\255\006\001\
\255\255\255\255\255\255\255\255\255\255\012\001\013\001\014\001\
\015\001\016\001\017\001\255\255\019\001\020\001\021\001\022\001\
\023\001\024\001\025\001\026\001\027\001\255\255\255\255\255\255\
\255\255\033\001\034\001\035\001\036\001\037\001\038\001\039\001\
\004\001\255\255\255\255\255\255\008\001\255\255\046\001\047\001\
\012\001\013\001\014\001\015\001\016\001\017\001\255\255\019\001\
\020\001\021\001\022\001\023\001\024\001\025\001\026\001\027\001\
\004\001\255\255\255\255\255\255\008\001\255\255\255\255\255\255\
\012\001\013\001\014\001\015\001\016\001\017\001\255\255\019\001\
\020\001\021\001\022\001\023\001\024\001\025\001\026\001\027\001\
\004\001\005\001\255\255\255\255\255\255\255\255\255\255\255\255\
\012\001\013\001\014\001\015\001\016\001\017\001\255\255\019\001\
\020\001\021\001\022\001\023\001\024\001\025\001\026\001\027\001\
\004\001\255\255\006\001\255\255\255\255\255\255\255\255\255\255\
\012\001\013\001\014\001\015\001\016\001\017\001\255\255\019\001\
\020\001\021\001\022\001\023\001\024\001\025\001\026\001\027\001\
\004\001\005\001\006\001\255\255\008\001\255\255\255\255\011\001\
\012\001\013\001\255\255\255\255\255\255\017\001\255\255\019\001\
\020\001\021\001\022\001\023\001\024\001\025\001\026\001\027\001\
\004\001\005\001\006\001\255\255\008\001\255\255\255\255\011\001\
\012\001\013\001\255\255\255\255\255\255\017\001\255\255\019\001\
\020\001\021\001\022\001\023\001\024\001\025\001\026\001\027\001\
\004\001\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\012\001\013\001\014\001\015\001\016\001\017\001\255\255\019\001\
\020\001\021\001\022\001\023\001\024\001\025\001\026\001\027\001\
\004\001\005\001\006\001\255\255\008\001\255\255\255\255\011\001\
\255\255\255\255\255\255\255\255\255\255\017\001\255\255\019\001\
\020\001\021\001\022\001\023\001\024\001\025\001\026\001\027\001\
\004\001\005\001\006\001\255\255\008\001\255\255\255\255\011\001\
\255\255\255\255\255\255\255\255\255\255\017\001\255\255\019\001\
\020\001\021\001\022\001\023\001\024\001\025\001\026\001\027\001\
\004\001\005\001\006\001\255\255\008\001\255\255\255\255\011\001\
\255\255\255\255\255\255\255\255\255\255\017\001\255\255\019\001\
\020\001\021\001\022\001\023\001\024\001\025\001\026\001\027\001\
\004\001\005\001\006\001\255\255\008\001\255\255\255\255\011\001\
\255\255\255\255\255\255\255\255\255\255\017\001\255\255\019\001\
\020\001\021\001\022\001\023\001\024\001\025\001\026\001\027\001\
\004\001\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\012\001\013\001\014\001\015\001\016\001\255\255\255\255\019\001\
\020\001\021\001\022\001\023\001\024\001\025\001\004\001\027\001\
\255\255\255\255\255\255\255\255\255\255\255\255\012\001\013\001\
\014\001\015\001\016\001\255\255\255\255\019\001\020\001\021\001\
\022\001\023\001\024\001\255\255\255\255\027\001\004\001\005\001\
\006\001\255\255\008\001\255\255\255\255\011\001\255\255\255\255\
\255\255\255\255\255\255\017\001\255\255\019\001\020\001\255\255\
\255\255\255\255\255\255\025\001\026\001\027\001\004\001\005\001\
\006\001\255\255\008\001\005\001\006\001\011\001\008\001\255\255\
\255\255\011\001\255\255\017\001\255\255\019\001\020\001\017\001\
\255\255\255\255\255\255\025\001\026\001\027\001\255\255\025\001\
\026\001\005\001\006\001\255\255\008\001\255\255\255\255\011\001\
\255\255\255\255\255\255\255\255\255\255\017\001\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\026\001"

let yynames_const = "\
  QUOTE\000\
  APOSTROPHE\000\
  COLON\000\
  LSQUARE\000\
  RSQUARE\000\
  SEMI\000\
  LPAREN\000\
  RPAREN\000\
  LBRACE\000\
  RBRACE\000\
  COMMA\000\
  PLUS\000\
  MINUS\000\
  TIMES\000\
  DIVIDE\000\
  MOD\000\
  ASSIGN\000\
  NOT\000\
  EQ\000\
  NEQ\000\
  LT\000\
  LEQ\000\
  GT\000\
  GEQ\000\
  AND\000\
  OR\000\
  DOT\000\
  RETURN\000\
  IF\000\
  ELSE\000\
  FOR\000\
  WHILE\000\
  INT\000\
  BOOL\000\
  FLOAT\000\
  VOID\000\
  STR\000\
  PITCH\000\
  STRUCT\000\
  ARRAY\000\
  EOF\000\
  "

let yynames_block = "\
  LITERAL\000\
  BLIT\000\
  ID\000\
  FLIT\000\
  SLIT\000\
  PLIT\000\
  STLIT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    Obj.repr(
# 33 "parser.mly"
           ( _1 )
# 434 "parser.ml"
               : Ast.program))
; (fun __caml_parser_env ->
    Obj.repr(
# 36 "parser.mly"
                 ( {globals=[]; functions=[]; structs=[]} )
# 440 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 37 "parser.mly"
               ( {globals = (_2 :: _1.globals); functions = _1.functions; structs = _1.structs} )
# 448 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'fdecl) in
    Obj.repr(
# 38 "parser.mly"
               ( {globals = _1.globals; functions = (_2 :: _1.functions); structs = _1.structs} )
# 456 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'sdecl) in
    Obj.repr(
# 39 "parser.mly"
               ( {globals = _1.globals; functions = _1.functions; structs = (_2 :: _1.structs)} )
# 464 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 42 "parser.mly"
               ( (_1, _2) )
# 472 "parser.ml"
               : 'vdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 45 "parser.mly"
                     ( [] )
# 478 "parser.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'vdecl_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 46 "parser.mly"
                     ( _2 :: _1 )
# 486 "parser.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 8 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 7 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 5 : 'formals_opt) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'vdecl_list) in
    let _8 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 50 "parser.mly"
   ( { typ = _1;
			 fname = _2;
			 formals = List.rev _4;
			 locals = List.rev _7;
			 body = List.rev _8 } )
# 501 "parser.ml"
               : 'fdecl))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'vdecl_list) in
    Obj.repr(
# 58 "parser.mly"
    ({
      struct_name = _2;
      members = _4;
    })
# 512 "parser.ml"
               : 'sdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 64 "parser.mly"
                ( [] )
# 518 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'formal_list) in
    Obj.repr(
# 65 "parser.mly"
                 ( _1 )
# 525 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 68 "parser.mly"
                           ( [(_1,_2)]     )
# 533 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'formal_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 69 "parser.mly"
                            ( (_3,_4) :: _1 )
# 542 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    Obj.repr(
# 72 "parser.mly"
          ( Int   )
# 548 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 73 "parser.mly"
          ( Bool  )
# 554 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 74 "parser.mly"
          ( Float )
# 560 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 75 "parser.mly"
          ( Void  )
# 566 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 76 "parser.mly"
          ( String )
# 572 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 77 "parser.mly"
          ( Pitch )
# 578 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 78 "parser.mly"
          ( Struct(_1) )
# 585 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    Obj.repr(
# 79 "parser.mly"
                     ( Array(_3) )
# 592 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 82 "parser.mly"
                 ( [] )
# 598 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 83 "parser.mly"
                  ( _2 :: _1 )
# 606 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 86 "parser.mly"
                                           ( Expr _1               )
# 613 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr_opt) in
    Obj.repr(
# 87 "parser.mly"
                                           ( Return _2             )
# 620 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 88 "parser.mly"
                                           ( Block(List.rev _2)    )
# 627 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 89 "parser.mly"
                                           ( If(_3, _5, Block([])) )
# 635 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'stmt) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 90 "parser.mly"
                                           ( If(_3, _5, _7)        )
# 644 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 6 : 'expr_opt) in
    let _5 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'expr_opt) in
    let _9 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 92 "parser.mly"
             ( For(_3, _5, _7, _9)   )
# 654 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 93 "parser.mly"
                                           ( While(_3, _5)         )
# 662 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 96 "parser.mly"
               ( Noexpr )
# 668 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 97 "parser.mly"
                 ( _1 )
# 675 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 100 "parser.mly"
                    ( Literal(_1)            )
# 682 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 101 "parser.mly"
                   ( Fliteral(_1)           )
# 689 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : bool) in
    Obj.repr(
# 102 "parser.mly"
                    ( BoolLit(_1)            )
# 696 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 103 "parser.mly"
                    ( Sliteral(_1)           )
# 703 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 104 "parser.mly"
                    ( Pliteral(_1)           )
# 710 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 105 "parser.mly"
                    ( Id(_1)                 )
# 717 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 106 "parser.mly"
                    ( Binop(_1, Add,   _3)   )
# 725 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 107 "parser.mly"
                    ( Binop(_1, Sub,   _3)   )
# 733 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 108 "parser.mly"
                    ( Binop(_1, Mult,  _3)   )
# 741 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 109 "parser.mly"
                    ( Binop(_1, Div,   _3)   )
# 749 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 111 "parser.mly"
                    ( Binop(_1, Mod,   _3)   )
# 757 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 113 "parser.mly"
                    ( Binop(_1, Equal, _3)   )
# 765 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 114 "parser.mly"
                    ( Binop(_1, Neq,   _3)   )
# 773 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 115 "parser.mly"
                    ( Binop(_1, Less,  _3)   )
# 781 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 116 "parser.mly"
                    ( Binop(_1, Leq,   _3)   )
# 789 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 117 "parser.mly"
                    ( Binop(_1, Greater, _3) )
# 797 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 118 "parser.mly"
                    ( Binop(_1, Geq,   _3)   )
# 805 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 119 "parser.mly"
                    ( Binop(_1, And,   _3)   )
# 813 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 120 "parser.mly"
                    ( Binop(_1, Or,    _3)   )
# 821 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 121 "parser.mly"
                    ( StructAccess(_1, _3) )
# 829 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 122 "parser.mly"
                             ( ArrayAccess(_1, _3) )
# 837 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 123 "parser.mly"
                        ( Unop(Neg, _2)      )
# 844 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 124 "parser.mly"
                    ( Unop(Not, _2)          )
# 851 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 125 "parser.mly"
                    ( Assign(_1, _3)         )
# 859 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'args_opt) in
    Obj.repr(
# 126 "parser.mly"
                             ( Call(_1, _3)  )
# 867 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 127 "parser.mly"
                      ( _2                   )
# 874 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'args_opt) in
    Obj.repr(
# 128 "parser.mly"
                              ( ArrayLit(_2) )
# 881 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 131 "parser.mly"
                ( [] )
# 887 "parser.ml"
               : 'args_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'args_list) in
    Obj.repr(
# 132 "parser.mly"
              ( List.rev _1 )
# 894 "parser.ml"
               : 'args_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 135 "parser.mly"
                          ( [_1] )
# 901 "parser.ml"
               : 'args_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'args_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 136 "parser.mly"
                        ( _3 :: _1 )
# 909 "parser.ml"
               : 'args_list))
(* Entry program *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let program (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.program)

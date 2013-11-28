exception Error

type token = 
  | WHILE
  | VOID
  | VIRTUAL
  | UTIMES
  | UPLUS
  | UMINUS
  | TRUE
  | TINT
  | TIMES
  | TIDENT of (string)
  | THIS
  | STRING of (string)
  | SEMICOLON
  | RPAREN
  | RETURN
  | RBRACE
  | PUBLIC
  | PLUS
  | OR
  | NULL
  | NOT
  | NEW
  | NEQ
  | MOD
  | MINUS
  | LT
  | LPAREN
  | LEQ
  | LBRACE
  | INT of (int)
  | INCR
  | INCLUDE
  | IN
  | IF
  | IDENT of (string)
  | GT
  | GEQ
  | FOR
  | FALSE
  | EQ
  | EOF
  | ENDL
  | ELSE
  | ECOMM
  | DOT
  | DIV
  | DECR
  | COUT
  | COMMA
  | COLON
  | CLASS
  | ASSIGN
  | ARROW
  | AND


val fichier: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.program)
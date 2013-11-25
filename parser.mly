/* Analyseur syntaxique pour MiniC++ */

/*%parameter <Lexhack : sig type t end>*/

%{
    open Ast
%}

%token <int> INT
%token <string> STRING
%token <string> IDENT
%token <string> TIDENT
%token EOF
%token INCLUDE

%token COUT
%token IN /* << */

%token COLON COMMA SEMICOLON LBRACE RBRACE

%token ASSIGN
%token OR
%token AND
%token EQ NEQ
%token LT LEQ GT GEQ
%token PLUS MINUS
%token TIMES DIV MOD
%token NOT INCR DECR ECOMM
%token ARROW DOT
%token LPAREN RPAREN
%token CLASS ELSE FALSE FOR IF TINT NEW NULL PUBLIC RETURN THIS TRUE VIRTUAL VOID WHILE

/* Priorités et associativités des tokens */
%right ASSIGN
%left OR
%left AND
%left EQ NEQ
%left LT LEQ GT GEQ
%left PLUS MINUS
%left TIMES DIV MOD
%right NOT INCR DECR ECOMM
%left ARROW DOT

/* Point d'entrée de la grammaire */
%start fichier

/* Type des valeurs retournées par l'analyseur syntaxique */
%type <Ast.program> fichier

%%

fichier:
    x=boption(INCLUDE) main=decl* EOF
    {
        {
            includes = x;
            program = main;
        }
    }

decl:
      x=decl_vars { DVar x }
    | x=decl_class { Class x }
    | x=proto y=bloc { Fonction (x, y) }

decl_vars:
    x=type_rule y=separated_nonempty_list(COMMA, var) SEMICOLON
    { (x, y) }

decl_class:
    CLASS x=IDENT y=supers? LBRACE PUBLIC COLON z=member* RBRACE SEMICOLON
    { (x, y, z) }

supers:
    COLON x=separated_nonempty_list(COMMA, preceded(PUBLIC, TIDENT))
    { x }

member:
      x = decl_vars { MVar x }
    | x=boption(VIRTUAL) y=proto SEMICOLON 
        { 
            Proto (x, y)
        }

proto:
    x=type_rule y=qvar z=paren(separated_list(COMMA, argument))
        {
            { 
                ident = Qvar (x, y);
                args = z;
            }
        }
    | x=TIDENT y=paren(separated_list(COMMA, argument))
        {
            {
                ident = Type x;
                args = y;
            }
        }
    | x=TIDENT COLON COLON y=TIDENT z=paren(separated_list(COMMA, argument))
        {
            {
                ident = Herit (x, y);
                args = z;
            }
        }

unary_plus:
    PLUS {} %prec INCR

unary_minus:
    MINUS {} %prec INCR

unary_times:
    TIMES {} %prec INCR

paren(X):
    LPAREN x=X RPAREN { x } %prec ARROW

type_rule:
      VOID { Void }
    | TINT { Int }
    | x=TIDENT { Tident x }

argument:
    x=type_rule y=var
    { (x, y) }

var:
      x=IDENT { Ident x }
    | unary_times x=var { VUTimes x }
    | ECOMM x=var { VEComm x }

qvar:
      x=qident { Qident x }
    | unary_times x=qvar { QUTimes x }
    | ECOMM x=qvar { QEComm x }

qident:
      x=IDENT { Ident x }
    | x=TIDENT COLON COLON y=IDENT { Tident (x, y) }

expr:
    x=INT { EInt x }
    | THIS { EThis }
    | FALSE { EFalse }
    | TRUE { ETrue }
    | NULL { ENull }
    | x=qident { EQident x }
    | unary_times x=expr { UOp (UTimes, x) }
    | x=expr DOT y=IDENT { Dot (x, y) }
    | x=expr ARROW y=IDENT { Arrow (x, y)}
    | x=expr ASSIGN y=expr { Assign (x, y) }
    | x=expr y=paren(separated_list(COMMA, expr)) { Apply (x, y) }
    | NEW t=TIDENT x=paren(separated_list(COMMA, expr))
        { 
            (*Lexhack.types_lexhack := !Lexhack.types_lexhack :: (t, TIDENT t);*)
            Instance (t, x)
        }
    | INCR x=expr { Incr (IncrL, x) }
    | DECR x=expr { Incr (DecrL, x) }
    | x=expr INCR { Incr (IncrR, x) }
    | x=expr DECR { Incr (DecrR, x) }
    | ECOMM x=expr { UOp (EComm, x) }
    | NOT x=expr { UOp (Not, x) }
    | unary_minus x=expr { UOp (UMinus, x) }
    | unary_plus x=expr { UOp (UPlus, x) }
    | x=expr y=operateur z=expr { Op (y, x, z) }
    | x=paren(expr) { x }

operateur:
      EQ { Eq }
    | NEQ { Neq }
    | LT { Lt }
    | LEQ { Leq }
    | GT { Gt }
    | GEQ { Geq }
    | PLUS { Plus }
    | MINUS { Minus }
    | TIMES { Times }
    | DIV { Div }
    | MOD { Mod }
    | AND { And }
    | OR { Or }

instruction:
    SEMICOLON { Nop }
    | x=expr SEMICOLON { IExpr x }
    | x=type_rule y=var { IVar (x, y, NoAssign) }
    | x=type_rule y=var z=preceded(ASSIGN, expr) { IVar (x, y, SAExpr z) }
    | x=type_rule y=var z=preceded(ASSIGN, TIDENT) t=paren(separated_nonempty_list(COMMA, expr))
        { let tid = Tident (z, t) in IVar (x, y, tid) }
    | IF x=paren(expr) y=instruction ELSE z=instruction { IfElse (x, y, z) }
    | IF x=paren(expr) y=instruction { If (x, y) }
    | WHILE x=paren(expr) y=instruction { While (x, y) }
    | FOR LPAREN x=separated_list(COMMA, expr) SEMICOLON y=expr? SEMICOLON z=separated_list(COMMA, expr) RPAREN t=instruction { For (x, y, z, t) }
    | x=bloc { IBloc x }
    | COUT x=nonempty_list(preceded(IN, expr_str)) { Cout x }
    | RETURN x=expr? SEMICOLON { Return x }

expr_str:
      x=expr { Expr x }
    | x=STRING { String x }

bloc:
     LBRACE x=instruction* RBRACE { Bloc x }
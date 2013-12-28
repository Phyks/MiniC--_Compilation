/* Analyseur syntaxique pour MiniC++ */

%{
    open Ast
    open Lexhack
%}

%token <int> INT
%token <string> STRING
%token <string> IDENT
%token <string> TIDENT
%token EOF
%token INCLUDE

%token COUT
%token ENDL
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
%token UPLUS UMINUS UTIMES
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
%right UPLUS UMINUS UTIMES
%left ARROW DOT

(* Conflicts solving *)
%nonassoc IF
%nonassoc ELSE

%left LPAREN
(* ==== *)

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
            program_loc = $startpos, $endpos;
        }
    }

decl:
      x=decl_vars { DVar x }
    | x=decl_class { Class x }
    | x=proto y=bloc { Fonction { fonction_content = (x, y); fonction_loc = $startpos, $endpos } }

decl_vars:
    x=type_rule y=separated_nonempty_list(COMMA, var) SEMICOLON
    { { decl_vars_content = (x, y); decl_vars_loc = $startpos,$endpos } }

lexhack_class:
    CLASS x=IDENT y=supers?
    {
        Lexhack.types_lexhack := x :: !(Lexhack.types_lexhack);
        (x,y)
    }

decl_class:
    x=lexhack_class LBRACE PUBLIC COLON z=member* RBRACE SEMICOLON
    {
        { decl_class_content = (fst x, snd x, z); decl_class_loc = $startpos,$endpos }
    }

supers:
    COLON x=separated_nonempty_list(COMMA, preceded(PUBLIC, TIDENT))
    { x }

member:
      x = decl_vars { MVar x }
    | VIRTUAL y=proto SEMICOLON 
        { 
            Proto (true, y)
        }
    | y=proto SEMICOLON 
        { 
            Proto (false, y)
        }

proto:
    x=type_rule y=qvar z=paren(separated_list(COMMA, argument))
        {
            { 
                ident = Qvar (x, y);
                args = z;
                proto_loc = $startpos, $endpos;
            }
        }
    | x=TIDENT y=paren(separated_list(COMMA, argument))
        {
            {
                ident = Type x;
                args = y;
                proto_loc = $startpos, $endpos;
            }
        }
    | x=TIDENT COLON COLON y=TIDENT z=paren(separated_list(COMMA, argument))
        {
            {
                ident = Herit (x, y);
                args = z;
                proto_loc = $startpos, $endpos;
            }
        }

paren(X):
    LPAREN x=X RPAREN { x }

type_rule:
      VOID { Void }
    | TINT { Int }
    | x=TIDENT { ASTTident x }

argument:
    x=type_rule y=var
    { (x, y) }

var:
      x=IDENT { VIdent x }
    | TIMES x=var { VUTimes x } %prec UTIMES
    | ECOMM x=var { VEComm x }

qvar:
      x=qident { Qident x }
    | TIMES x=qvar { QUTimes x } %prec UTIMES
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
    | TIMES x=expr { UOp (UTimes, x) } %prec UTIMES
    | x=expr y=paren(separated_list(COMMA, expr)) { Apply (x, y) }
    | x=expr DOT y=IDENT { Dot (x, y) }
    | x=expr ARROW y=IDENT { Arrow (x, y)}
    | x=expr ASSIGN y=expr { Assign (x, y) }
    | NEW t=TIDENT x=paren(separated_list(COMMA, expr))
        { 
            Instance (t, x)
        }
    | INCR x=expr { Incr (IncrL, x) }
    | DECR x=expr { Incr (DecrL, x) }
    | x=expr INCR { Incr (IncrR, x) }
    | x=expr DECR { Incr (DecrR, x) }
    | ECOMM x=expr { UOp (EComm, x) }
    | NOT x=expr { UOp (Not, x) }
    | MINUS x=expr { UOp (UMinus, x) } %prec UMINUS
    | PLUS x=expr { UOp (UPlus, x) } %prec UPLUS
    | x=expr y=operateur z=expr { Op (y, x, z) }
    | x=paren(expr) { x }

%inline operateur:
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
    SEMICOLON { {instruction_content = Nop; instruction_loc = $startpos, $endpos} }
    | x=expr SEMICOLON { {instruction_content = IExpr x ; instruction_loc = $startpos, $endpos} }
    | x=type_rule y=var SEMICOLON { {instruction_content = IVar (x, y, NoAssign) ; instruction_loc = $startpos, $endpos} }
    | x=type_rule y=var z=preceded(ASSIGN, expr) SEMICOLON { {instruction_content = IVar (x, y, SAExpr z) ; instruction_loc = $startpos, $endpos} }
    | x=type_rule y=var z=preceded(ASSIGN, TIDENT) t=paren(separated_nonempty_list(COMMA, expr)) SEMICOLON
        { let tid = SATident (z, t) in {instruction_content = IVar (x, y, tid) ; instruction_loc = $startpos, $endpos} }
    | IF x=paren(expr) y=instruction ELSE z=instruction { {instruction_content = IfElse (x, y, z) ; instruction_loc = $startpos, $endpos} }
    | IF x=paren(expr) y=instruction { {instruction_content = If (x, y) ; instruction_loc = $startpos, $endpos} }
    | WHILE x=paren(expr) y=instruction { {instruction_content = While (x, y) ; instruction_loc = $startpos, $endpos} }
    | FOR LPAREN x=separated_list(COMMA, expr) SEMICOLON y=expr? SEMICOLON z=separated_list(COMMA, expr) RPAREN t=instruction { {instruction_content = For (x, y, z, t) ; instruction_loc = $startpos, $endpos} }
    | x=bloc { {instruction_content = IBloc x ; instruction_loc = $startpos, $endpos} }
    | COUT x=nonempty_list(preceded(IN, expr_str)) SEMICOLON 
        { {instruction_content = Cout x ; instruction_loc = $startpos, $endpos} }
    | RETURN x=expr? SEMICOLON { {instruction_content = Return x ; instruction_loc = $startpos, $endpos} }

expr_str:
      x=expr { Expr x }
    | x=STRING { String x }
    | ENDL { String "\n" }

bloc:
    LBRACE x=instruction* RBRACE { { bloc_content = Bloc_content x; bloc_loc = $startpos, $endpos} }

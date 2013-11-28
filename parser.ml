exception Error

type token = 
  | WHILE
  | VOID
  | VIRTUAL
  | TRUE
  | TINT
  | TIMES
  | TIDENT of (
# 11 "parser.mly"
       (string)
# 14 "parser.ml"
)
  | THIS
  | STRING of (
# 9 "parser.mly"
       (string)
# 20 "parser.ml"
)
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
  | INT of (
# 8 "parser.mly"
       (int)
# 42 "parser.ml"
)
  | INCR
  | INCLUDE
  | IN
  | IF
  | IDENT of (
# 10 "parser.mly"
       (string)
# 51 "parser.ml"
)
  | GT
  | GEQ
  | FOR
  | FALSE
  | EQ
  | EOF
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

and _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  mutable _menhir_token: token;
  mutable _menhir_startp: Lexing.position;
  mutable _menhir_endp: Lexing.position;
  mutable _menhir_shifted: int
}

and _menhir_state = 
  | MenhirState191
  | MenhirState184
  | MenhirState179
  | MenhirState175
  | MenhirState172
  | MenhirState167
  | MenhirState165
  | MenhirState162
  | MenhirState159
  | MenhirState157
  | MenhirState155
  | MenhirState154
  | MenhirState153
  | MenhirState151
  | MenhirState149
  | MenhirState147
  | MenhirState145
  | MenhirState144
  | MenhirState143
  | MenhirState140
  | MenhirState137
  | MenhirState135
  | MenhirState134
  | MenhirState131
  | MenhirState130
  | MenhirState126
  | MenhirState125
  | MenhirState124
  | MenhirState123
  | MenhirState122
  | MenhirState121
  | MenhirState120
  | MenhirState115
  | MenhirState114
  | MenhirState97
  | MenhirState94
  | MenhirState93
  | MenhirState92
  | MenhirState91
  | MenhirState90
  | MenhirState88
  | MenhirState85
  | MenhirState84
  | MenhirState82
  | MenhirState77
  | MenhirState76
  | MenhirState75
  | MenhirState74
  | MenhirState73
  | MenhirState72
  | MenhirState70
  | MenhirState63
  | MenhirState59
  | MenhirState58
  | MenhirState52
  | MenhirState51
  | MenhirState48
  | MenhirState44
  | MenhirState42
  | MenhirState40
  | MenhirState33
  | MenhirState30
  | MenhirState25
  | MenhirState21
  | MenhirState14
  | MenhirState12
  | MenhirState9
  | MenhirState7
  | MenhirState6
  | MenhirState3


# 3 "parser.mly"
  
    open Ast
    open Lexhack

# 159 "parser.ml"
let _eRR =
  Error

let rec _menhir_goto_nonempty_list_preceded_IN_expr_str__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nonempty_list_preceded_IN_expr_str__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState157 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv925 * _menhir_state) * _menhir_state * 'tv_expr_str) * _menhir_state * 'tv_nonempty_list_preceded_IN_expr_str__) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv923 * _menhir_state) * _menhir_state * 'tv_expr_str) * _menhir_state * 'tv_nonempty_list_preceded_IN_expr_str__) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, x0), _, xs) = _menhir_stack in
        let _v : 'tv_nonempty_list_preceded_IN_expr_str__ = let x =
          let x = x0 in
          
# 86 "/usr/share/menhir/standard.mly"
    ( x )
# 178 "parser.ml"
          
        in
        
# 126 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 184 "parser.ml"
         in
        _menhir_goto_nonempty_list_preceded_IN_expr_str__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv924)) : 'freshtv926)
    | MenhirState154 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv935 * _menhir_state) * _menhir_state * 'tv_nonempty_list_preceded_IN_expr_str__) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv933 * _menhir_state) * _menhir_state * 'tv_nonempty_list_preceded_IN_expr_str__) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv929 * _menhir_state) * _menhir_state * 'tv_nonempty_list_preceded_IN_expr_str__) = Obj.magic _menhir_stack in
            ((let _ = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv927 * _menhir_state) * _menhir_state * 'tv_nonempty_list_preceded_IN_expr_str__) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, x) = _menhir_stack in
            let _v : 'tv_instruction = 
# 199 "parser.mly"
                                                             ( Cout x )
# 206 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv928)) : 'freshtv930)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv931 * _menhir_state) * _menhir_state * 'tv_nonempty_list_preceded_IN_expr_str__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv932)) : 'freshtv934)) : 'freshtv936)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_expr__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv901 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv899 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv895 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let _ = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv893 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, xs0) = _menhir_stack in
            let _v : 'tv_paren_separated_list_COMMA_expr__ = let x =
              let xs = xs0 in
              
# 135 "/usr/share/menhir/standard.mly"
    ( xs )
# 244 "parser.ml"
              
            in
            
# 120 "parser.mly"
                      ( x )
# 250 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv891) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_paren_separated_list_COMMA_expr__) = _v in
            ((match _menhir_s with
            | MenhirState175 | MenhirState172 | MenhirState159 | MenhirState143 | MenhirState135 | MenhirState134 | MenhirState130 | MenhirState126 | MenhirState125 | MenhirState124 | MenhirState123 | MenhirState122 | MenhirState97 | MenhirState121 | MenhirState115 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv885 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_paren_separated_list_COMMA_expr__) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv883 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
                let (_ : _menhir_state) = _menhir_s in
                let (y : 'tv_paren_separated_list_COMMA_expr__) = _v in
                ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
                let _v : 'tv_expr = 
# 156 "parser.mly"
                                                  ( Apply (x, y) )
# 270 "parser.ml"
                 in
                _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv884)) : 'freshtv886)
            | MenhirState84 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv889 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 278 "parser.ml"
                )) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_paren_separated_list_COMMA_expr__) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv887 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 286 "parser.ml"
                )) = Obj.magic _menhir_stack in
                let (_ : _menhir_state) = _menhir_s in
                let (x : 'tv_paren_separated_list_COMMA_expr__) = _v in
                ((let ((_menhir_stack, _menhir_s), t) = _menhir_stack in
                let _v : 'tv_expr = 
# 158 "parser.mly"
        ( 
            Instance (t, x)
        )
# 296 "parser.ml"
                 in
                _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv888)) : 'freshtv890)
            | _ ->
                _menhir_fail ()) : 'freshtv892)) : 'freshtv894)) : 'freshtv896)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv897 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv898)) : 'freshtv900)) : 'freshtv902)
    | MenhirState147 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv911 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv909 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv905 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv903 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | DECR ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState149
            | ECOMM ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState149
            | FALSE ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState149
            | IDENT _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
            | INCR ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState149
            | INT _v ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
            | LPAREN ->
                _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState149
            | MINUS ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState149
            | NEW ->
                _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState149
            | NOT ->
                _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState149
            | NULL ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState149
            | PLUS ->
                _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState149
            | THIS ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState149
            | TIDENT _v ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
            | TIMES ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState149
            | TRUE ->
                _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState149
            | SEMICOLON ->
                _menhir_reduce76 _menhir_env (Obj.magic _menhir_stack) MenhirState149
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState149) : 'freshtv904)) : 'freshtv906)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv907 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv908)) : 'freshtv910)) : 'freshtv912)
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv921 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) * _menhir_state * 'tv_option_expr_) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv919 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) * _menhir_state * 'tv_option_expr_) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv915 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) * _menhir_state * 'tv_option_expr_) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv913 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) * _menhir_state * 'tv_option_expr_) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | COUT ->
                _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | DECR ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | ECOMM ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | FALSE ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | FOR ->
                _menhir_run146 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | IDENT _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState153 _v
            | IF ->
                _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | INCR ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | INT _v ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState153 _v
            | LBRACE ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | LPAREN ->
                _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | MINUS ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | NEW ->
                _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | NOT ->
                _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | NULL ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | PLUS ->
                _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | RETURN ->
                _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | SEMICOLON ->
                _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | THIS ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | TIDENT _v ->
                _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState153 _v
            | TIMES ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | TINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | TRUE ->
                _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | VOID ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | WHILE ->
                _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState153) : 'freshtv914)) : 'freshtv916)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv917 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) * _menhir_state * 'tv_option_expr_) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv918)) : 'freshtv920)) : 'freshtv922)
    | _ ->
        _menhir_fail ()

and _menhir_goto_operateur : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_operateur -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv881 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_operateur) = Obj.magic _menhir_stack in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv879 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_operateur) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | DECR ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState120
    | ECOMM ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState120
    | FALSE ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState120
    | IDENT _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
    | INCR ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState120
    | INT _v ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
    | LPAREN ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState120
    | MINUS ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState120
    | NEW ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState120
    | NOT ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState120
    | NULL ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState120
    | PLUS ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState120
    | THIS ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState120
    | TIDENT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
    | TIMES ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState120
    | TRUE ->
        _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState120
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState120) : 'freshtv880)) : 'freshtv882)

and _menhir_goto_list_instruction_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_instruction_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv873 * _menhir_state) * _menhir_state * 'tv_list_instruction_) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv871 * _menhir_state) * _menhir_state * 'tv_list_instruction_) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv867 * _menhir_state) * _menhir_state * 'tv_list_instruction_) = Obj.magic _menhir_stack in
            ((let _ = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv865 * _menhir_state) * _menhir_state * 'tv_list_instruction_) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, x) = _menhir_stack in
            let _v : 'tv_bloc = 
# 207 "parser.mly"
                                  ( Bloc x )
# 522 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv863) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_bloc) = _v in
            ((match _menhir_s with
            | MenhirState75 | MenhirState184 | MenhirState137 | MenhirState145 | MenhirState179 | MenhirState153 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv857) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_bloc) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv855) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (x : 'tv_bloc) = _v in
                ((let _v : 'tv_instruction = 
# 198 "parser.mly"
             ( IBloc x )
# 541 "parser.ml"
                 in
                _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv856)) : 'freshtv858)
            | MenhirState74 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv861 * _menhir_state * 'tv_proto) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_bloc) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv859 * _menhir_state * 'tv_proto) = Obj.magic _menhir_stack in
                let (_ : _menhir_state) = _menhir_s in
                let (y : 'tv_bloc) = _v in
                ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
                let _v : 'tv_decl = 
# 63 "parser.mly"
                     ( Fonction (x, y) )
# 557 "parser.ml"
                 in
                _menhir_goto_decl _menhir_env _menhir_stack _menhir_s _v) : 'freshtv860)) : 'freshtv862)
            | _ ->
                _menhir_fail ()) : 'freshtv864)) : 'freshtv866)) : 'freshtv868)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv869 * _menhir_state) * _menhir_state * 'tv_list_instruction_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv870)) : 'freshtv872)) : 'freshtv874)
    | MenhirState184 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv877 * _menhir_state * 'tv_instruction) * _menhir_state * 'tv_list_instruction_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv875 * _menhir_state * 'tv_instruction) * _menhir_state * 'tv_list_instruction_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, xs) = _menhir_stack in
        let _v : 'tv_list_instruction_ = 
# 116 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 578 "parser.ml"
         in
        _menhir_goto_list_instruction_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv876)) : 'freshtv878)
    | _ ->
        _menhir_fail ()

and _menhir_reduce76 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_option_expr_ = 
# 29 "/usr/share/menhir/standard.mly"
    ( None )
# 589 "parser.ml"
     in
    _menhir_goto_option_expr_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run155 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv853 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | DECR ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | ECOMM ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | FALSE ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | IDENT _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState155 _v
    | INCR ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | INT _v ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState155 _v
    | LPAREN ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | MINUS ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | NEW ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | NOT ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | NULL ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | PLUS ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | STRING _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv851) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState155 in
        let (_v : (
# 9 "parser.mly"
       (string)
# 632 "parser.ml"
        )) = _v in
        ((let _ = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv849) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : (
# 9 "parser.mly"
       (string)
# 641 "parser.ml"
        )) = _v in
        ((let _v : 'tv_expr_str = 
# 204 "parser.mly"
               ( String x )
# 646 "parser.ml"
         in
        _menhir_goto_expr_str _menhir_env _menhir_stack _menhir_s _v) : 'freshtv850)) : 'freshtv852)
    | THIS ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | TIDENT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState155 _v
    | TIMES ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | TRUE ->
        _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState155) : 'freshtv854)

and _menhir_goto_qvar : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_qvar -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState73 | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv839 * _menhir_state * 'tv_unary_times) * _menhir_state * 'tv_qvar) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv837 * _menhir_state * 'tv_unary_times) * _menhir_state * 'tv_qvar) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, x) = _menhir_stack in
        let _v : 'tv_qvar = 
# 138 "parser.mly"
                         ( QUTimes x )
# 675 "parser.ml"
         in
        _menhir_goto_qvar _menhir_env _menhir_stack _menhir_s _v) : 'freshtv838)) : 'freshtv840)
    | MenhirState72 | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv843 * _menhir_state) * _menhir_state * 'tv_qvar) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv841 * _menhir_state) * _menhir_state * 'tv_qvar) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, x) = _menhir_stack in
        let _v : 'tv_qvar = 
# 139 "parser.mly"
                   ( QEComm x )
# 687 "parser.ml"
         in
        _menhir_goto_qvar _menhir_env _menhir_stack _menhir_s _v) : 'freshtv842)) : 'freshtv844)
    | MenhirState70 | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv847 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_qvar) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv845 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_qvar) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | LPAREN ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63) : 'freshtv846)) : 'freshtv848)
    | _ ->
        _menhir_fail ()

and _menhir_reduce57 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_expr__ = 
# 57 "/usr/share/menhir/standard.mly"
    ( [] )
# 713 "parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_expr_str : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr_str -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv835 * _menhir_state) * _menhir_state * 'tv_expr_str) = Obj.magic _menhir_stack in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv833 * _menhir_state) * _menhir_state * 'tv_expr_str) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | IN ->
        _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState157
    | SEMICOLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv831 * _menhir_state) * _menhir_state * 'tv_expr_str) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, x0) = _menhir_stack in
        let _v : 'tv_nonempty_list_preceded_IN_expr_str__ = let x =
          let x = x0 in
          
# 86 "/usr/share/menhir/standard.mly"
    ( x )
# 739 "parser.ml"
          
        in
        
# 124 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 745 "parser.ml"
         in
        _menhir_goto_nonempty_list_preceded_IN_expr_str__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv832)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState157) : 'freshtv834)) : 'freshtv836)

and _menhir_goto_option_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_option_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState140 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv819 * _menhir_state) * _menhir_state * 'tv_option_expr_) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv817 * _menhir_state) * _menhir_state * 'tv_option_expr_) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv813 * _menhir_state) * _menhir_state * 'tv_option_expr_) = Obj.magic _menhir_stack in
            ((let _ = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv811 * _menhir_state) * _menhir_state * 'tv_option_expr_) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, x) = _menhir_stack in
            let _v : 'tv_instruction = 
# 200 "parser.mly"
                               ( Return x )
# 776 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv812)) : 'freshtv814)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv815 * _menhir_state) * _menhir_state * 'tv_option_expr_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv816)) : 'freshtv818)) : 'freshtv820)
    | MenhirState149 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv829 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) * _menhir_state * 'tv_option_expr_) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv827 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) * _menhir_state * 'tv_option_expr_) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv823 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) * _menhir_state * 'tv_option_expr_) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv821 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) * _menhir_state * 'tv_option_expr_) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | DECR ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | ECOMM ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | FALSE ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | IDENT _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | INCR ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | INT _v ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | LPAREN ->
                _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | MINUS ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | NEW ->
                _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | NOT ->
                _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | NULL ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | PLUS ->
                _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | THIS ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | TIDENT _v ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | TIMES ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | TRUE ->
                _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | RPAREN ->
                _menhir_reduce57 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState151) : 'freshtv822)) : 'freshtv824)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv825 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) * _menhir_state * 'tv_option_expr_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv826)) : 'freshtv828)) : 'freshtv830)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState151 | MenhirState147 | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv783 * _menhir_state * 'tv_separated_nonempty_list_COMMA_expr_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv781 * _menhir_state * 'tv_separated_nonempty_list_COMMA_expr_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_loption_separated_nonempty_list_COMMA_expr__ = 
# 59 "/usr/share/menhir/standard.mly"
    ( x )
# 864 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv782)) : 'freshtv784)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv787 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_expr_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv785 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_expr_) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, x), _), _, xs) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 146 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 876 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv786)) : 'freshtv788)
    | MenhirState167 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv809) * _menhir_state * 'tv_separated_nonempty_list_COMMA_expr_) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv807) * _menhir_state * 'tv_separated_nonempty_list_COMMA_expr_) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv803) * _menhir_state * 'tv_separated_nonempty_list_COMMA_expr_) = Obj.magic _menhir_stack in
            ((let _ = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv801) * _menhir_state * 'tv_separated_nonempty_list_COMMA_expr_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, x) = _menhir_stack in
            let _v : 'tv_paren_separated_nonempty_list_COMMA_expr__ = 
# 120 "parser.mly"
                      ( x )
# 898 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv799) = _menhir_stack in
            let (_v : 'tv_paren_separated_nonempty_list_COMMA_expr__) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv797 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) * _menhir_state * (
# 11 "parser.mly"
       (string)
# 908 "parser.ml"
            )) * 'tv_paren_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            let _tok = _menhir_env._menhir_token in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv795 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) * _menhir_state * (
# 11 "parser.mly"
       (string)
# 916 "parser.ml"
            )) * 'tv_paren_separated_nonempty_list_COMMA_expr__) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | SEMICOLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv791 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) * _menhir_state * (
# 11 "parser.mly"
       (string)
# 925 "parser.ml"
                )) * 'tv_paren_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
                ((let _ = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv789 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) * _menhir_state * (
# 11 "parser.mly"
       (string)
# 932 "parser.ml"
                )) * 'tv_paren_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
                ((let ((((_menhir_stack, _menhir_s, x), _, y), _, x0), t) = _menhir_stack in
                let _v : 'tv_instruction = let z =
                  let x = x0 in
                  
# 86 "/usr/share/menhir/standard.mly"
    ( x )
# 940 "parser.ml"
                  
                in
                
# 193 "parser.mly"
        ( let tid = Tident (z, t) in IVar (x, y, tid) )
# 946 "parser.ml"
                 in
                _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv790)) : 'freshtv792)
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv793 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) * _menhir_state * (
# 11 "parser.mly"
       (string)
# 956 "parser.ml"
                )) * 'tv_paren_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv794)) : 'freshtv796)) : 'freshtv798)) : 'freshtv800)) : 'freshtv802)) : 'freshtv804)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv805) * _menhir_state * 'tv_separated_nonempty_list_COMMA_expr_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv806)) : 'freshtv808)) : 'freshtv810)
    | _ ->
        _menhir_fail ()

and _menhir_run98 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv779) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_operateur = 
# 181 "parser.mly"
            ( Times )
# 979 "parser.ml"
     in
    _menhir_goto_operateur _menhir_env _menhir_stack _menhir_s _v) : 'freshtv780)

and _menhir_run99 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv777) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_operateur = 
# 179 "parser.mly"
           ( Plus )
# 992 "parser.ml"
     in
    _menhir_goto_operateur _menhir_env _menhir_stack _menhir_s _v) : 'freshtv778)

and _menhir_run100 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv775) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_operateur = 
# 185 "parser.mly"
         ( Or )
# 1005 "parser.ml"
     in
    _menhir_goto_operateur _menhir_env _menhir_stack _menhir_s _v) : 'freshtv776)

and _menhir_run101 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv773) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_operateur = 
# 174 "parser.mly"
          ( Neq )
# 1018 "parser.ml"
     in
    _menhir_goto_operateur _menhir_env _menhir_stack _menhir_s _v) : 'freshtv774)

and _menhir_run102 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv771) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_operateur = 
# 183 "parser.mly"
          ( Mod )
# 1031 "parser.ml"
     in
    _menhir_goto_operateur _menhir_env _menhir_stack _menhir_s _v) : 'freshtv772)

and _menhir_run103 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv769) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_operateur = 
# 180 "parser.mly"
            ( Minus )
# 1044 "parser.ml"
     in
    _menhir_goto_operateur _menhir_env _menhir_stack _menhir_s _v) : 'freshtv770)

and _menhir_run104 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv767) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_operateur = 
# 175 "parser.mly"
         ( Lt )
# 1057 "parser.ml"
     in
    _menhir_goto_operateur _menhir_env _menhir_stack _menhir_s _v) : 'freshtv768)

and _menhir_run105 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv765) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_operateur = 
# 176 "parser.mly"
          ( Leq )
# 1070 "parser.ml"
     in
    _menhir_goto_operateur _menhir_env _menhir_stack _menhir_s _v) : 'freshtv766)

and _menhir_run106 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv763 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
    let (_ : _menhir_state) = _menhir_s in
    ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
    let _v : 'tv_expr = 
# 163 "parser.mly"
                  ( Incr (IncrR, x) )
# 1084 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv764)

and _menhir_run107 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv761) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_operateur = 
# 177 "parser.mly"
         ( Gt )
# 1097 "parser.ml"
     in
    _menhir_goto_operateur _menhir_env _menhir_stack _menhir_s _v) : 'freshtv762)

and _menhir_run108 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv759) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_operateur = 
# 178 "parser.mly"
          ( Geq )
# 1110 "parser.ml"
     in
    _menhir_goto_operateur _menhir_env _menhir_stack _menhir_s _v) : 'freshtv760)

and _menhir_run109 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv757) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_operateur = 
# 173 "parser.mly"
         ( Eq )
# 1123 "parser.ml"
     in
    _menhir_goto_operateur _menhir_env _menhir_stack _menhir_s _v) : 'freshtv758)

and _menhir_run110 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv755 * _menhir_state * 'tv_expr) * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv751 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 10 "parser.mly"
       (string)
# 1141 "parser.ml"
        )) = _v in
        ((let _ = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv749 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        let (y : (
# 10 "parser.mly"
       (string)
# 1149 "parser.ml"
        )) = _v in
        ((let ((_menhir_stack, _menhir_s, x), _) = _menhir_stack in
        let _v : 'tv_expr = 
# 153 "parser.mly"
                         ( Dot (x, y) )
# 1155 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv750)) : 'freshtv752)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv753 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv754)) : 'freshtv756)

and _menhir_run112 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv747) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_operateur = 
# 182 "parser.mly"
          ( Div )
# 1175 "parser.ml"
     in
    _menhir_goto_operateur _menhir_env _menhir_stack _menhir_s _v) : 'freshtv748)

and _menhir_run113 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv745 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
    let (_ : _menhir_state) = _menhir_s in
    ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
    let _v : 'tv_expr = 
# 164 "parser.mly"
                  ( Incr (DecrR, x) )
# 1189 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv746)

and _menhir_run114 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv743 * _menhir_state * 'tv_expr) * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | DECR ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | ECOMM ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | FALSE ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | IDENT _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
    | INCR ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | INT _v ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
    | LPAREN ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | MINUS ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | NEW ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | NOT ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | NULL ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | PLUS ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | THIS ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | TIDENT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
    | TIMES ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | TRUE ->
        _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState114) : 'freshtv744)

and _menhir_run116 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv741 * _menhir_state * 'tv_expr) * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv737 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 10 "parser.mly"
       (string)
# 1252 "parser.ml"
        )) = _v in
        ((let _ = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv735 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        let (y : (
# 10 "parser.mly"
       (string)
# 1260 "parser.ml"
        )) = _v in
        ((let ((_menhir_stack, _menhir_s, x), _) = _menhir_stack in
        let _v : 'tv_expr = 
# 154 "parser.mly"
                           ( Arrow (x, y))
# 1266 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv736)) : 'freshtv738)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv739 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv740)) : 'freshtv742)

and _menhir_run118 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv733) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_operateur = 
# 184 "parser.mly"
          ( And )
# 1286 "parser.ml"
     in
    _menhir_goto_operateur _menhir_env _menhir_stack _menhir_s _v) : 'freshtv734)

and _menhir_goto_instruction : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_instruction -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState153 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv707 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) * _menhir_state * 'tv_option_expr_) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv705 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) * _menhir_state * 'tv_option_expr_) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s), _, xs0), _, y), _, xs1), _, t) = _menhir_stack in
        let _v : 'tv_instruction = let z =
          let xs = xs1 in
          
# 135 "/usr/share/menhir/standard.mly"
    ( xs )
# 1305 "parser.ml"
          
        in
        let x =
          let xs = xs0 in
          
# 135 "/usr/share/menhir/standard.mly"
    ( xs )
# 1313 "parser.ml"
          
        in
        
# 197 "parser.mly"
                                                                                                                              ( For (x, y, z, t) )
# 1319 "parser.ml"
         in
        _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv706)) : 'freshtv708)
    | MenhirState145 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv719 * _menhir_state) * _menhir_state * 'tv_paren_expr_) * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv717 * _menhir_state) * _menhir_state * 'tv_paren_expr_) * _menhir_state * 'tv_instruction) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv711 * _menhir_state) * _menhir_state * 'tv_paren_expr_) * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv709 * _menhir_state) * _menhir_state * 'tv_paren_expr_) * _menhir_state * 'tv_instruction) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | COUT ->
                _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | DECR ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | ECOMM ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | FALSE ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | FOR ->
                _menhir_run146 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | IDENT _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
            | IF ->
                _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | INCR ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | INT _v ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
            | LBRACE ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | LPAREN ->
                _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | MINUS ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | NEW ->
                _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | NOT ->
                _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | NULL ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | PLUS ->
                _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | RETURN ->
                _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | SEMICOLON ->
                _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | THIS ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | TIDENT _v ->
                _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
            | TIMES ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | TINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | TRUE ->
                _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | VOID ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | WHILE ->
                _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState179) : 'freshtv710)) : 'freshtv712)
        | COUT | DECR | ECOMM | FALSE | FOR | IDENT _ | IF | INCR | INT _ | LBRACE | LPAREN | MINUS | NEW | NOT | NULL | PLUS | RBRACE | RETURN | SEMICOLON | THIS | TIDENT _ | TIMES | TINT | TRUE | VOID | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv713 * _menhir_state) * _menhir_state * 'tv_paren_expr_) * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, x), _, y) = _menhir_stack in
            let _v : 'tv_instruction = 
# 195 "parser.mly"
                                     ( If (x, y) )
# 1400 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv714)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv715 * _menhir_state) * _menhir_state * 'tv_paren_expr_) * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv716)) : 'freshtv718)) : 'freshtv720)
    | MenhirState179 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv723 * _menhir_state) * _menhir_state * 'tv_paren_expr_) * _menhir_state * 'tv_instruction) * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv721 * _menhir_state) * _menhir_state * 'tv_paren_expr_) * _menhir_state * 'tv_instruction) * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, x), _, y), _, z) = _menhir_stack in
        let _v : 'tv_instruction = 
# 194 "parser.mly"
                                                        ( IfElse (x, y, z) )
# 1419 "parser.ml"
         in
        _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv722)) : 'freshtv724)
    | MenhirState137 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv727 * _menhir_state) * _menhir_state * 'tv_paren_expr_) * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv725 * _menhir_state) * _menhir_state * 'tv_paren_expr_) * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, x), _, y) = _menhir_stack in
        let _v : 'tv_instruction = 
# 196 "parser.mly"
                                        ( While (x, y) )
# 1431 "parser.ml"
         in
        _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv726)) : 'freshtv728)
    | MenhirState184 | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv731 * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv729 * _menhir_state * 'tv_instruction) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | COUT ->
            _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | DECR ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | ECOMM ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | FALSE ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | FOR ->
            _menhir_run146 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | IDENT _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | IF ->
            _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | INCR ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | INT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | LBRACE ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | LPAREN ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | MINUS ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | NEW ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | NOT ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | NULL ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | PLUS ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | RETURN ->
            _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | SEMICOLON ->
            _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | THIS ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | TIDENT _v ->
            _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | TINT ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | TRUE ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | VOID ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | WHILE ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | RBRACE ->
            _menhir_reduce51 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState184) : 'freshtv730)) : 'freshtv732)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_var_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_var_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv683 * _menhir_state * 'tv_var) * _menhir_state * 'tv_separated_nonempty_list_COMMA_var_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv681 * _menhir_state * 'tv_var) * _menhir_state * 'tv_separated_nonempty_list_COMMA_var_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, xs) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_var_ = 
# 146 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 1515 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_var_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv682)) : 'freshtv684)
    | MenhirState70 | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv703 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_separated_nonempty_list_COMMA_var_) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv701 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_separated_nonempty_list_COMMA_var_) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv697 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_separated_nonempty_list_COMMA_var_) = Obj.magic _menhir_stack in
            ((let _ = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv695 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_separated_nonempty_list_COMMA_var_) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, x), _, y) = _menhir_stack in
            let _v : 'tv_decl_vars = 
# 67 "parser.mly"
    ( (x, y) )
# 1537 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv693) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_decl_vars) = _v in
            ((match _menhir_s with
            | MenhirState40 | MenhirState48 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv687) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_decl_vars) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv685) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (x : 'tv_decl_vars) = _v in
                ((let _v : 'tv_member = 
# 81 "parser.mly"
                    ( MVar x )
# 1556 "parser.ml"
                 in
                _menhir_goto_member _menhir_env _menhir_stack _menhir_s _v) : 'freshtv686)) : 'freshtv688)
            | MenhirState191 | MenhirState3 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv691) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_decl_vars) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv689) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (x : 'tv_decl_vars) = _v in
                ((let _v : 'tv_decl = 
# 61 "parser.mly"
                  ( DVar x )
# 1571 "parser.ml"
                 in
                _menhir_goto_decl _menhir_env _menhir_stack _menhir_s _v) : 'freshtv690)) : 'freshtv692)
            | _ ->
                _menhir_fail ()) : 'freshtv694)) : 'freshtv696)) : 'freshtv698)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv699 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_separated_nonempty_list_COMMA_var_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv700)) : 'freshtv702)) : 'freshtv704)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_argument_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_argument_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv675) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_argument_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv673) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_separated_nonempty_list_COMMA_argument_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_argument__ = 
# 59 "/usr/share/menhir/standard.mly"
    ( x )
# 1601 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_argument__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv674)) : 'freshtv676)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv679 * _menhir_state * 'tv_argument) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_argument_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv677 * _menhir_state * 'tv_argument) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_separated_nonempty_list_COMMA_argument_) = _v in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_argument_ = 
# 146 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 1617 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_argument_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv678)) : 'freshtv680)
    | _ ->
        _menhir_fail ()

and _menhir_reduce51 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_instruction_ = 
# 114 "/usr/share/menhir/standard.mly"
    ( [] )
# 1628 "parser.ml"
     in
    _menhir_goto_list_instruction_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run76 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv671 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | LPAREN ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76) : 'freshtv672)

and _menhir_run138 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "parser.mly"
       (string)
# 1650 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv669 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 1659 "parser.ml"
    )) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | COLON ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
    | ECOMM | IDENT _ | TIMES ->
        _menhir_reduce103 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv667 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 1674 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv668)) : 'freshtv670)

and _menhir_run139 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv665) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_instruction = 
# 188 "parser.mly"
              ( Nop )
# 1688 "parser.ml"
     in
    _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv666)

and _menhir_run140 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv663 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | DECR ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | ECOMM ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | FALSE ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | IDENT _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
    | INCR ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | INT _v ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
    | LPAREN ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | MINUS ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | NEW ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | NOT ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | NULL ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | PLUS ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | THIS ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | TIDENT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
    | TIMES ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | TRUE ->
        _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | SEMICOLON ->
        _menhir_reduce76 _menhir_env (Obj.magic _menhir_stack) MenhirState140
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState140) : 'freshtv664)

and _menhir_run144 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv661 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | LPAREN ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState144) : 'freshtv662)

and _menhir_run146 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv659 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv655 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv653 * _menhir_state) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | DECR ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | ECOMM ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | FALSE ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | IDENT _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState147 _v
        | INCR ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | INT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState147 _v
        | LPAREN ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | MINUS ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | NEW ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | NOT ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | NULL ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | PLUS ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | THIS ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | TIDENT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState147 _v
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | TRUE ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | SEMICOLON ->
            _menhir_reduce57 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState147) : 'freshtv654)) : 'freshtv656)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv657 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv658)) : 'freshtv660)

and _menhir_run154 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv651 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | IN ->
        _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState154) : 'freshtv652)

and _menhir_goto_qident : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_qident -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState70 | MenhirState72 | MenhirState73 | MenhirState52 | MenhirState58 | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv645) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_qident) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv643) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_qident) = _v in
        ((let _v : 'tv_qvar = 
# 137 "parser.mly"
               ( Qident x )
# 1846 "parser.ml"
         in
        _menhir_goto_qvar _menhir_env _menhir_stack _menhir_s _v) : 'freshtv644)) : 'freshtv646)
    | MenhirState184 | MenhirState75 | MenhirState137 | MenhirState179 | MenhirState145 | MenhirState153 | MenhirState165 | MenhirState167 | MenhirState155 | MenhirState151 | MenhirState149 | MenhirState147 | MenhirState140 | MenhirState77 | MenhirState82 | MenhirState131 | MenhirState85 | MenhirState88 | MenhirState90 | MenhirState91 | MenhirState92 | MenhirState93 | MenhirState120 | MenhirState114 | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv649) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_qident) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv647) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_qident) = _v in
        ((let _v : 'tv_expr = 
# 151 "parser.mly"
               ( EQident x )
# 1861 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv648)) : 'freshtv650)
    | _ ->
        _menhir_fail ()

and _menhir_run85 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv641 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | DECR ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | ECOMM ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | FALSE ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | IDENT _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | INCR ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | INT _v ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | LPAREN ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | MINUS ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | NEW ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | NOT ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | NULL ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | PLUS ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | THIS ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | TIDENT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | TIMES ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | TRUE ->
        _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | RPAREN ->
        _menhir_reduce57 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85) : 'freshtv642)

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv531 * _menhir_state * 'tv_unary_minus) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv529 * _menhir_state * 'tv_unary_minus) * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | ARROW ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | ASSIGN ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | DECR ->
            _menhir_run113 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | DIV ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | DOT ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | EQ ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | GEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | GT ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | INCR ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | LEQ ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | LPAREN ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | LT ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | MINUS ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | MOD ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | NEQ ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | OR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | PLUS ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | TIMES ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | COMMA | IN | RPAREN | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv527 * _menhir_state * 'tv_unary_minus) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, x) = _menhir_stack in
            let _v : 'tv_expr = 
# 167 "parser.mly"
                         ( UOp (UMinus, x) )
# 1972 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv528)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97) : 'freshtv530)) : 'freshtv532)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv537 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv535 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | ARROW ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | ASSIGN ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | DECR ->
            _menhir_run113 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | DIV ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | DOT ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | EQ ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | GEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | GT ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | INCR ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | LEQ ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | LPAREN ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | LT ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | MINUS ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | MOD ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | NEQ ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | OR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | PLUS ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | TIMES ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | COMMA | IN | RPAREN | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv533 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, x), _), _, y) = _menhir_stack in
            let _v : 'tv_expr = 
# 155 "parser.mly"
                           ( Assign (x, y) )
# 2033 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv534)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115) : 'freshtv536)) : 'freshtv538)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv543 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_operateur) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv541 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_operateur) * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | ARROW ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | ASSIGN ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | DECR ->
            _menhir_run113 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | DIV ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | DOT ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | EQ ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | GEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | GT ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | INCR ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | LEQ ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | LPAREN ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | LT ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | MINUS ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | MOD ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | NEQ ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | OR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | PLUS ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | TIMES ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | COMMA | IN | RPAREN | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv539 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_operateur) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, x), _, y), _, z) = _menhir_stack in
            let _v : 'tv_expr = 
# 169 "parser.mly"
                                ( Op (y, x, z) )
# 2094 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv540)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121) : 'freshtv542)) : 'freshtv544)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv549 * _menhir_state * 'tv_unary_plus) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv547 * _menhir_state * 'tv_unary_plus) * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | ARROW ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | ASSIGN ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | DECR ->
            _menhir_run113 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | DIV ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | DOT ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | EQ ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | GEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | GT ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | INCR ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | LEQ ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | LPAREN ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | LT ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | MINUS ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | MOD ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | NEQ ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | OR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | PLUS ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | TIMES ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | COMMA | IN | RPAREN | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv545 * _menhir_state * 'tv_unary_plus) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, x) = _menhir_stack in
            let _v : 'tv_expr = 
# 168 "parser.mly"
                        ( UOp (UPlus, x) )
# 2155 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv546)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122) : 'freshtv548)) : 'freshtv550)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv555 * _menhir_state * 'tv_unary_times) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv553 * _menhir_state * 'tv_unary_times) * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | ARROW ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | ASSIGN ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | DECR ->
            _menhir_run113 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | DIV ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | DOT ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | EQ ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | GEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | GT ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | INCR ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | LEQ ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | LPAREN ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | LT ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | MINUS ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | MOD ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | NEQ ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | OR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | PLUS ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | TIMES ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | COMMA | IN | RPAREN | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv551 * _menhir_state * 'tv_unary_times) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, x) = _menhir_stack in
            let _v : 'tv_expr = 
# 152 "parser.mly"
                         ( UOp (UTimes, x) )
# 2216 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv552)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123) : 'freshtv554)) : 'freshtv556)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv561 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv559 * _menhir_state) * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ARROW ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | DECR ->
            _menhir_run113 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | DOT ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | INCR ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | LPAREN ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | AND | ASSIGN | COMMA | DIV | EQ | GEQ | GT | IN | LEQ | LT | MINUS | MOD | NEQ | OR | PLUS | RPAREN | SEMICOLON | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv557 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, x) = _menhir_stack in
            let _v : 'tv_expr = 
# 162 "parser.mly"
                  ( Incr (DecrL, x) )
# 2249 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv558)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState124) : 'freshtv560)) : 'freshtv562)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv567 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv565 * _menhir_state) * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ARROW ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | DECR ->
            _menhir_run113 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | DOT ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | INCR ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | LPAREN ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | AND | ASSIGN | COMMA | DIV | EQ | GEQ | GT | IN | LEQ | LT | MINUS | MOD | NEQ | OR | PLUS | RPAREN | SEMICOLON | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv563 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, x) = _menhir_stack in
            let _v : 'tv_expr = 
# 165 "parser.mly"
                   ( UOp (EComm, x) )
# 2282 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv564)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState125) : 'freshtv566)) : 'freshtv568)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv573 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv571 * _menhir_state) * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ARROW ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | DECR ->
            _menhir_run113 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | DOT ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | INCR ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | LPAREN ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | AND | ASSIGN | COMMA | DIV | EQ | GEQ | GT | IN | LEQ | LT | MINUS | MOD | NEQ | OR | PLUS | RPAREN | SEMICOLON | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv569 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, x) = _menhir_stack in
            let _v : 'tv_expr = 
# 161 "parser.mly"
                  ( Incr (IncrL, x) )
# 2315 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv570)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState126) : 'freshtv572)) : 'freshtv574)
    | MenhirState147 | MenhirState151 | MenhirState167 | MenhirState131 | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv583 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv581 * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | ARROW ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | ASSIGN ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv577 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState130 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv575 * _menhir_state * 'tv_expr) * _menhir_state) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | DECR ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | ECOMM ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | FALSE ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | IDENT _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
            | INCR ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | INT _v ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
            | LPAREN ->
                _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | MINUS ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | NEW ->
                _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | NOT ->
                _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | NULL ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | PLUS ->
                _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | THIS ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | TIDENT _v ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
            | TIMES ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | TRUE ->
                _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState131) : 'freshtv576)) : 'freshtv578)
        | DECR ->
            _menhir_run113 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | DIV ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | DOT ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | EQ ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | GEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | GT ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | INCR ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | LEQ ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | LPAREN ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | LT ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | MINUS ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | MOD ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | NEQ ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | OR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | PLUS ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | TIMES ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | RPAREN | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv579 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 144 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 2422 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv580)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState130) : 'freshtv582)) : 'freshtv584)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv589 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv587 * _menhir_state) * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ARROW ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | DECR ->
            _menhir_run113 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | DOT ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | INCR ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | LPAREN ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | AND | ASSIGN | COMMA | DIV | EQ | GEQ | GT | IN | LEQ | LT | MINUS | MOD | NEQ | OR | PLUS | RPAREN | SEMICOLON | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv585 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, x) = _menhir_stack in
            let _v : 'tv_expr = 
# 166 "parser.mly"
                 ( UOp (Not, x) )
# 2455 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv586)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState134) : 'freshtv588)) : 'freshtv590)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv611 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv609 * _menhir_state) * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | ARROW ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | ASSIGN ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | DECR ->
            _menhir_run113 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | DIV ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | DOT ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | EQ ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | GEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | GT ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | INCR ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | LEQ ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | LPAREN ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | LT ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | MINUS ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | MOD ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | NEQ ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | OR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | PLUS ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv607 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState135 in
            ((let _ = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv605 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, x) = _menhir_stack in
            let _v : 'tv_paren_expr_ = 
# 120 "parser.mly"
                      ( x )
# 2519 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv603) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_paren_expr_) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            match _menhir_s with
            | MenhirState184 | MenhirState75 | MenhirState137 | MenhirState179 | MenhirState145 | MenhirState153 | MenhirState165 | MenhirState167 | MenhirState155 | MenhirState151 | MenhirState149 | MenhirState147 | MenhirState140 | MenhirState77 | MenhirState82 | MenhirState131 | MenhirState85 | MenhirState88 | MenhirState90 | MenhirState91 | MenhirState92 | MenhirState93 | MenhirState120 | MenhirState114 | MenhirState94 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv593 * _menhir_state * 'tv_paren_expr_) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv591 * _menhir_state * 'tv_paren_expr_) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
                let _v : 'tv_expr = 
# 170 "parser.mly"
                    ( x )
# 2536 "parser.ml"
                 in
                _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv592)) : 'freshtv594)
            | MenhirState76 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv597 * _menhir_state) * _menhir_state * 'tv_paren_expr_) = Obj.magic _menhir_stack in
                ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                let _tok = _menhir_env._menhir_token in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv595 * _menhir_state) * _menhir_state * 'tv_paren_expr_) = _menhir_stack in
                let (_tok : token) = _tok in
                ((match _tok with
                | COUT ->
                    _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState137
                | DECR ->
                    _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState137
                | ECOMM ->
                    _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState137
                | FALSE ->
                    _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState137
                | FOR ->
                    _menhir_run146 _menhir_env (Obj.magic _menhir_stack) MenhirState137
                | IDENT _v ->
                    _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
                | IF ->
                    _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState137
                | INCR ->
                    _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState137
                | INT _v ->
                    _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
                | LBRACE ->
                    _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState137
                | LPAREN ->
                    _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState137
                | MINUS ->
                    _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState137
                | NEW ->
                    _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState137
                | NOT ->
                    _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState137
                | NULL ->
                    _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState137
                | PLUS ->
                    _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState137
                | RETURN ->
                    _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState137
                | SEMICOLON ->
                    _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState137
                | THIS ->
                    _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState137
                | TIDENT _v ->
                    _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
                | TIMES ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState137
                | TINT ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState137
                | TRUE ->
                    _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState137
                | VOID ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState137
                | WHILE ->
                    _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState137
                | _ ->
                    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                    _menhir_env._menhir_shifted <- (-1);
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState137) : 'freshtv596)) : 'freshtv598)
            | MenhirState144 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv601 * _menhir_state) * _menhir_state * 'tv_paren_expr_) = Obj.magic _menhir_stack in
                ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                let _tok = _menhir_env._menhir_token in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv599 * _menhir_state) * _menhir_state * 'tv_paren_expr_) = _menhir_stack in
                let (_tok : token) = _tok in
                ((match _tok with
                | COUT ->
                    _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState145
                | DECR ->
                    _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState145
                | ECOMM ->
                    _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState145
                | FALSE ->
                    _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState145
                | FOR ->
                    _menhir_run146 _menhir_env (Obj.magic _menhir_stack) MenhirState145
                | IDENT _v ->
                    _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
                | IF ->
                    _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState145
                | INCR ->
                    _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState145
                | INT _v ->
                    _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
                | LBRACE ->
                    _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState145
                | LPAREN ->
                    _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState145
                | MINUS ->
                    _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState145
                | NEW ->
                    _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState145
                | NOT ->
                    _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState145
                | NULL ->
                    _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState145
                | PLUS ->
                    _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState145
                | RETURN ->
                    _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState145
                | SEMICOLON ->
                    _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState145
                | THIS ->
                    _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState145
                | TIDENT _v ->
                    _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
                | TIMES ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState145
                | TINT ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState145
                | TRUE ->
                    _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState145
                | VOID ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState145
                | WHILE ->
                    _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState145
                | _ ->
                    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                    _menhir_env._menhir_shifted <- (-1);
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState145) : 'freshtv600)) : 'freshtv602)
            | _ ->
                _menhir_fail ()) : 'freshtv604)) : 'freshtv606)) : 'freshtv608)
        | TIMES ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState135) : 'freshtv610)) : 'freshtv612)
    | MenhirState149 | MenhirState140 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv617 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv615 * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | ARROW ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | ASSIGN ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | DECR ->
            _menhir_run113 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | DIV ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | DOT ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | EQ ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | GEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | GT ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | INCR ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | LEQ ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | LPAREN ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | LT ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | MINUS ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | MOD ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | NEQ ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | OR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | PLUS ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | TIMES ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv613 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_option_expr_ = 
# 31 "/usr/share/menhir/standard.mly"
    ( Some x )
# 2727 "parser.ml"
             in
            _menhir_goto_option_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv614)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState143) : 'freshtv616)) : 'freshtv618)
    | MenhirState155 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv623 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv621 * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState159
        | ARROW ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState159
        | ASSIGN ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState159
        | DECR ->
            _menhir_run113 _menhir_env (Obj.magic _menhir_stack) MenhirState159
        | DIV ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState159
        | DOT ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState159
        | EQ ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState159
        | GEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState159
        | GT ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState159
        | INCR ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState159
        | LEQ ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState159
        | LPAREN ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState159
        | LT ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState159
        | MINUS ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState159
        | MOD ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState159
        | NEQ ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState159
        | OR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState159
        | PLUS ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState159
        | TIMES ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState159
        | IN | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv619 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_expr_str = 
# 203 "parser.mly"
             ( Expr x )
# 2788 "parser.ml"
             in
            _menhir_goto_expr_str _menhir_env _menhir_stack _menhir_s _v) : 'freshtv620)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState159) : 'freshtv622)) : 'freshtv624)
    | MenhirState165 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv631 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv629 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | ARROW ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | ASSIGN ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | DECR ->
            _menhir_run113 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | DIV ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | DOT ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | EQ ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | GEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | GT ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | INCR ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | LEQ ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | LPAREN ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | LT ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | MINUS ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | MOD ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | NEQ ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | OR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | PLUS ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv627 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState172 in
            ((let _ = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv625 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s, x), _, y), _, x0) = _menhir_stack in
            let _v : 'tv_instruction = let z =
              let x = x0 in
              
# 86 "/usr/share/menhir/standard.mly"
    ( x )
# 2854 "parser.ml"
              
            in
            
# 191 "parser.mly"
                                                           ( IVar (x, y, SAExpr z) )
# 2860 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv626)) : 'freshtv628)
        | TIMES ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState172) : 'freshtv630)) : 'freshtv632)
    | MenhirState75 | MenhirState184 | MenhirState137 | MenhirState145 | MenhirState179 | MenhirState153 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv639 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv637 * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState175
        | ARROW ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState175
        | ASSIGN ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState175
        | DECR ->
            _menhir_run113 _menhir_env (Obj.magic _menhir_stack) MenhirState175
        | DIV ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState175
        | DOT ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState175
        | EQ ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState175
        | GEQ ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState175
        | GT ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState175
        | INCR ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState175
        | LEQ ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState175
        | LPAREN ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState175
        | LT ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState175
        | MINUS ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState175
        | MOD ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState175
        | NEQ ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState175
        | OR ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState175
        | PLUS ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState175
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv635 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState175 in
            ((let _ = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv633 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_instruction = 
# 189 "parser.mly"
                       ( IExpr x )
# 2926 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv634)) : 'freshtv636)
        | TIMES ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState175
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState175) : 'freshtv638)) : 'freshtv640)
    | _ ->
        _menhir_fail ()

and _menhir_goto_var : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_var -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState72 | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv467 * _menhir_state) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv465 * _menhir_state) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, x) = _menhir_stack in
        let _v : 'tv_var = 
# 134 "parser.mly"
                  ( VEComm x )
# 2951 "parser.ml"
         in
        _menhir_goto_var _menhir_env _menhir_stack _menhir_s _v) : 'freshtv466)) : 'freshtv468)
    | MenhirState73 | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv471 * _menhir_state * 'tv_unary_times) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv469 * _menhir_state * 'tv_unary_times) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, x) = _menhir_stack in
        let _v : 'tv_var = 
# 133 "parser.mly"
                        ( VUTimes x )
# 2963 "parser.ml"
         in
        _menhir_goto_var _menhir_env _menhir_stack _menhir_s _v) : 'freshtv470)) : 'freshtv472)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv489 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv487 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, y) = _menhir_stack in
        let _v : 'tv_argument = 
# 129 "parser.mly"
    ( (x, y) )
# 2975 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv485) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_argument) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv483 * _menhir_state * 'tv_argument) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv481 * _menhir_state * 'tv_argument) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv475 * _menhir_state * 'tv_argument) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv473 * _menhir_state * 'tv_argument) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | TIDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
            | TINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | VOID ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState21
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21) : 'freshtv474)) : 'freshtv476)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv477 * _menhir_state * 'tv_argument) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_argument_ = 
# 144 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 3015 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_argument_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv478)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv479 * _menhir_state * 'tv_argument) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv480)) : 'freshtv482)) : 'freshtv484)) : 'freshtv486)) : 'freshtv488)) : 'freshtv490)
    | MenhirState70 | MenhirState44 | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv501 * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv499 * _menhir_state * 'tv_var) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv493 * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv491 * _menhir_state * 'tv_var) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | ECOMM ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | IDENT _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
            | TIMES ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44) : 'freshtv492)) : 'freshtv494)
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv495 * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_var_ = 
# 144 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 3059 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_var_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv496)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv497 * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv498)) : 'freshtv500)) : 'freshtv502)
    | MenhirState162 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv525 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv523 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv515 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv513 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | DECR ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | ECOMM ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | FALSE ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | IDENT _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState165 _v
            | INCR ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | INT _v ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState165 _v
            | LPAREN ->
                _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | MINUS ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | NEW ->
                _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | NOT ->
                _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | NULL ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | PLUS ->
                _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | THIS ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | TIDENT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv511 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState165 in
                let (_v : (
# 11 "parser.mly"
       (string)
# 3119 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
                let _tok = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv509 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) * _menhir_state * (
# 11 "parser.mly"
       (string)
# 3127 "parser.ml"
                )) = _menhir_stack in
                let (_tok : token) = _tok in
                ((match _tok with
                | COLON ->
                    _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
                | LPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv505) = Obj.magic _menhir_stack in
                    ((let _tok = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv503) = _menhir_stack in
                    let (_tok : token) = _tok in
                    ((match _tok with
                    | DECR ->
                        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState167
                    | ECOMM ->
                        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState167
                    | FALSE ->
                        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState167
                    | IDENT _v ->
                        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
                    | INCR ->
                        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState167
                    | INT _v ->
                        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
                    | LPAREN ->
                        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState167
                    | MINUS ->
                        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState167
                    | NEW ->
                        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState167
                    | NOT ->
                        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState167
                    | NULL ->
                        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState167
                    | PLUS ->
                        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState167
                    | THIS ->
                        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState167
                    | TIDENT _v ->
                        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
                    | TIMES ->
                        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState167
                    | TRUE ->
                        _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState167
                    | _ ->
                        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                        _menhir_env._menhir_shifted <- (-1);
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState167) : 'freshtv504)) : 'freshtv506)
                | _ ->
                    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                    _menhir_env._menhir_shifted <- (-1);
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv507 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) * _menhir_state * (
# 11 "parser.mly"
       (string)
# 3184 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv508)) : 'freshtv510)) : 'freshtv512)
            | TIMES ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | TRUE ->
                _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState165
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState165) : 'freshtv514)) : 'freshtv516)
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv519 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
            ((let _ = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv517 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, x), _, y) = _menhir_stack in
            let _v : 'tv_instruction = 
# 190 "parser.mly"
                                  ( IVar (x, y, NoAssign) )
# 3206 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv518)) : 'freshtv520)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv521 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv522)) : 'freshtv524)) : 'freshtv526)
    | _ ->
        _menhir_fail ()

and _menhir_run75 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv463 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | COUT ->
        _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | DECR ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | ECOMM ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | FALSE ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | FOR ->
        _menhir_run146 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | IDENT _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | IF ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | INCR ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | INT _v ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | LBRACE ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | LPAREN ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | MINUS ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | NEW ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | NOT ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | NULL ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | PLUS ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | RETURN ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | SEMICOLON ->
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | THIS ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | TIDENT _v ->
        _menhir_run138 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | TIMES ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | TINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | TRUE ->
        _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | VOID ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | WHILE ->
        _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | RBRACE ->
        _menhir_reduce51 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75) : 'freshtv464)

and _menhir_goto_member : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_member -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv461 * _menhir_state * 'tv_member) = Obj.magic _menhir_stack in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv459 * _menhir_state * 'tv_member) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | TIDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | TINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | VIRTUAL ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | VOID ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | RBRACE ->
        _menhir_reduce53 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48) : 'freshtv460)) : 'freshtv462)

and _menhir_goto_decl : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_decl -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv457 * _menhir_state * 'tv_decl) = Obj.magic _menhir_stack in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv455 * _menhir_state * 'tv_decl) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | CLASS ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState191
    | TIDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
    | TINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState191
    | VOID ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState191
    | EOF ->
        _menhir_reduce49 _menhir_env (Obj.magic _menhir_stack) MenhirState191
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState191) : 'freshtv456)) : 'freshtv458)

and _menhir_run54 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 11 "parser.mly"
       (string)
# 3339 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv453 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 3347 "parser.ml"
    )) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | COLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv449 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 3356 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv447 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 3363 "parser.ml"
        )) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | IDENT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv443 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 3372 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 10 "parser.mly"
       (string)
# 3377 "parser.ml"
            )) = _v in
            ((let _ = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv441 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 3384 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (y : (
# 10 "parser.mly"
       (string)
# 3389 "parser.ml"
            )) = _v in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_qident = 
# 143 "parser.mly"
                                   ( Tident (x, y) )
# 3395 "parser.ml"
             in
            _menhir_goto_qident _menhir_env _menhir_stack _menhir_s _v) : 'freshtv442)) : 'freshtv444)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv445 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 3405 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv446)) : 'freshtv448)) : 'freshtv450)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv451 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 3416 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv452)) : 'freshtv454)

and _menhir_reduce87 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 10 "parser.mly"
       (string)
# 3424 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, x) = _menhir_stack in
    let _v : 'tv_qident = 
# 142 "parser.mly"
              ( Ident x )
# 3431 "parser.ml"
     in
    _menhir_goto_qident _menhir_env _menhir_stack _menhir_s _v

and _menhir_run78 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv439) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_expr = 
# 149 "parser.mly"
           ( ETrue )
# 3444 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv440)

and _menhir_run79 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv437) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_expr = 
# 147 "parser.mly"
           ( EThis )
# 3457 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv438)

and _menhir_run80 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv435) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_unary_plus = 
# 111 "parser.mly"
         ()
# 3470 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv433) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_unary_plus) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv431 * _menhir_state * 'tv_unary_plus) = Obj.magic _menhir_stack in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv429 * _menhir_state * 'tv_unary_plus) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | DECR ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | ECOMM ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | FALSE ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | IDENT _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | INCR ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | INT _v ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | LPAREN ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | MINUS ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | NEW ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | NOT ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | NULL ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | PLUS ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | THIS ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | TIDENT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | TIMES ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | TRUE ->
        _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93) : 'freshtv430)) : 'freshtv432)) : 'freshtv434)) : 'freshtv436)

and _menhir_run81 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv427) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_expr = 
# 150 "parser.mly"
           ( ENull )
# 3531 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv428)

and _menhir_run82 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv425 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | DECR ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | ECOMM ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | FALSE ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | IDENT _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | INCR ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | INT _v ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | LPAREN ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | MINUS ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | NEW ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | NOT ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | NULL ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | PLUS ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | THIS ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | TIDENT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | TIMES ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | TRUE ->
        _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82) : 'freshtv426)

and _menhir_run83 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv423 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | TIDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv419 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 11 "parser.mly"
       (string)
# 3594 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv417 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 3602 "parser.ml"
        )) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | LPAREN ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84) : 'freshtv418)) : 'freshtv420)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv421 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv422)) : 'freshtv424)

and _menhir_run86 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv415) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_unary_minus = 
# 114 "parser.mly"
          ()
# 3629 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv413) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_unary_minus) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv411 * _menhir_state * 'tv_unary_minus) = Obj.magic _menhir_stack in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv409 * _menhir_state * 'tv_unary_minus) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | DECR ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | ECOMM ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | FALSE ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | IDENT _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | INCR ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | INT _v ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | LPAREN ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | MINUS ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | NEW ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | NOT ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | NULL ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | PLUS ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | THIS ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | TIDENT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | TIMES ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | TRUE ->
        _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94) : 'freshtv410)) : 'freshtv412)) : 'freshtv414)) : 'freshtv416)

and _menhir_run77 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv407 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | DECR ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | ECOMM ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | FALSE ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | IDENT _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | INCR ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | INT _v ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | LPAREN ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | MINUS ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | NEW ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | NOT ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | NULL ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | PLUS ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | THIS ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | TIDENT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | TIMES ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | TRUE ->
        _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77) : 'freshtv408)

and _menhir_run87 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 8 "parser.mly"
       (int)
# 3729 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv405) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (x : (
# 8 "parser.mly"
       (int)
# 3739 "parser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 146 "parser.mly"
          ( EInt x )
# 3744 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv406)

and _menhir_run88 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv403 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | DECR ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | ECOMM ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | FALSE ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | IDENT _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | INCR ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | INT _v ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | LPAREN ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | MINUS ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | NEW ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | NOT ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | NULL ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | PLUS ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | THIS ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | TIDENT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | TIMES ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | TRUE ->
        _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88) : 'freshtv404)

and _menhir_run89 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv401) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_expr = 
# 148 "parser.mly"
            ( EFalse )
# 3802 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv402)

and _menhir_run90 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv399 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | DECR ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | ECOMM ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | FALSE ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | IDENT _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | INCR ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | INT _v ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | LPAREN ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | MINUS ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | NEW ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | NOT ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | NULL ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | PLUS ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | THIS ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | TIDENT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | TIMES ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | TRUE ->
        _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90) : 'freshtv400)

and _menhir_run91 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv397 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | DECR ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | ECOMM ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | FALSE ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | IDENT _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | INCR ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | INT _v ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | LPAREN ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | MINUS ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | NEW ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | NOT ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | NULL ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | PLUS ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | THIS ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | TIDENT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | TIMES ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | TRUE ->
        _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91) : 'freshtv398)

and _menhir_reduce107 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 10 "parser.mly"
       (string)
# 3899 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, x) = _menhir_stack in
    let _v : 'tv_var = 
# 132 "parser.mly"
              ( Ident x )
# 3906 "parser.ml"
     in
    _menhir_goto_var _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_proto : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_proto -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv391 * _menhir_state * 'tv_boption_VIRTUAL_) * _menhir_state * 'tv_proto) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv389 * _menhir_state * 'tv_boption_VIRTUAL_) * _menhir_state * 'tv_proto) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv385 * _menhir_state * 'tv_boption_VIRTUAL_) * _menhir_state * 'tv_proto) = Obj.magic _menhir_stack in
            ((let _ = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv383 * _menhir_state * 'tv_boption_VIRTUAL_) * _menhir_state * 'tv_proto) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, x), _, y) = _menhir_stack in
            let _v : 'tv_member = 
# 83 "parser.mly"
        ( 
            Proto (x, y)
        )
# 3935 "parser.ml"
             in
            _menhir_goto_member _menhir_env _menhir_stack _menhir_s _v) : 'freshtv384)) : 'freshtv386)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv387 * _menhir_state * 'tv_boption_VIRTUAL_) * _menhir_state * 'tv_proto) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv388)) : 'freshtv390)) : 'freshtv392)
    | MenhirState191 | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv395 * _menhir_state * 'tv_proto) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv393 * _menhir_state * 'tv_proto) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | LBRACE ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74) : 'freshtv394)) : 'freshtv396)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_member_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_member_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv359 * _menhir_state * 'tv_member) * _menhir_state * 'tv_list_member_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv357 * _menhir_state * 'tv_member) * _menhir_state * 'tv_list_member_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, xs) = _menhir_stack in
        let _v : 'tv_list_member_ = 
# 116 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 3976 "parser.ml"
         in
        _menhir_goto_list_member_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv358)) : 'freshtv360)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv381 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 3984 "parser.ml"
        )) * 'tv_option_supers_) * _menhir_state * 'tv_list_member_) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv379 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 3992 "parser.ml"
        )) * 'tv_option_supers_) * _menhir_state * 'tv_list_member_) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv375 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 4001 "parser.ml"
            )) * 'tv_option_supers_) * _menhir_state * 'tv_list_member_) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv373 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 4008 "parser.ml"
            )) * 'tv_option_supers_) * _menhir_state * 'tv_list_member_) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | SEMICOLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv369 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 4017 "parser.ml"
                )) * 'tv_option_supers_) * _menhir_state * 'tv_list_member_) = Obj.magic _menhir_stack in
                ((let _ = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv367 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 4024 "parser.ml"
                )) * 'tv_option_supers_) * _menhir_state * 'tv_list_member_) = Obj.magic _menhir_stack in
                ((let ((((_menhir_stack, _menhir_s), x), y), _, z) = _menhir_stack in
                let _v : 'tv_decl_class = 
# 71 "parser.mly"
    (
        Lexhack.types_lexhack := x :: !(Lexhack.types_lexhack);
        (x, y, z)
    )
# 4033 "parser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv365) = _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_decl_class) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv363) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_decl_class) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv361) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (x : 'tv_decl_class) = _v in
                ((let _v : 'tv_decl = 
# 62 "parser.mly"
                   ( Class x )
# 4050 "parser.ml"
                 in
                _menhir_goto_decl _menhir_env _menhir_stack _menhir_s _v) : 'freshtv362)) : 'freshtv364)) : 'freshtv366)) : 'freshtv368)) : 'freshtv370)
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv371 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 4060 "parser.ml"
                )) * 'tv_option_supers_) * _menhir_state * 'tv_list_member_) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv372)) : 'freshtv374)) : 'freshtv376)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv377 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 4071 "parser.ml"
            )) * 'tv_option_supers_) * _menhir_state * 'tv_list_member_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv378)) : 'freshtv380)) : 'freshtv382)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_run71 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "parser.mly"
       (string)
# 4086 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv355 * _menhir_state * (
# 10 "parser.mly"
       (string)
# 4095 "parser.ml"
    )) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | COMMA | SEMICOLON ->
        _menhir_reduce107 _menhir_env (Obj.magic _menhir_stack)
    | LPAREN ->
        _menhir_reduce87 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv353 * _menhir_state * (
# 10 "parser.mly"
       (string)
# 4110 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv354)) : 'freshtv356)

and _menhir_run72 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv351 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | ECOMM ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | IDENT _v ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | TIDENT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | TIMES ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72) : 'freshtv352)

and _menhir_run53 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "parser.mly"
       (string)
# 4139 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv349 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 4148 "parser.ml"
    )) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | COLON ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv347 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 4161 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv348)) : 'freshtv350)

and _menhir_run57 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "parser.mly"
       (string)
# 4169 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _ = _menhir_discard _menhir_env in
    _menhir_reduce87 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run58 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv345 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | ECOMM ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | IDENT _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | TIDENT _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | TIMES ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58) : 'freshtv346)

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv343) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_unary_times = 
# 117 "parser.mly"
          ()
# 4206 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv341) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_unary_times) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState162 | MenhirState42 | MenhirState44 | MenhirState9 | MenhirState14 | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv327 * _menhir_state * 'tv_unary_times) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv325 * _menhir_state * 'tv_unary_times) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ECOMM ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | IDENT _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14) : 'freshtv326)) : 'freshtv328)
    | MenhirState52 | MenhirState59 | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv331 * _menhir_state * 'tv_unary_times) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv329 * _menhir_state * 'tv_unary_times) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ECOMM ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | IDENT _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
        | TIDENT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59) : 'freshtv330)) : 'freshtv332)
    | MenhirState70 | MenhirState73 | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv335 * _menhir_state * 'tv_unary_times) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv333 * _menhir_state * 'tv_unary_times) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ECOMM ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | IDENT _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
        | TIDENT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73) : 'freshtv334)) : 'freshtv336)
    | MenhirState184 | MenhirState75 | MenhirState137 | MenhirState179 | MenhirState145 | MenhirState165 | MenhirState167 | MenhirState153 | MenhirState155 | MenhirState151 | MenhirState149 | MenhirState147 | MenhirState140 | MenhirState77 | MenhirState82 | MenhirState131 | MenhirState85 | MenhirState88 | MenhirState90 | MenhirState120 | MenhirState114 | MenhirState94 | MenhirState93 | MenhirState92 | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv339 * _menhir_state * 'tv_unary_times) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv337 * _menhir_state * 'tv_unary_times) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | DECR ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | ECOMM ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | FALSE ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | IDENT _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | INCR ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | INT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | LPAREN ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | MINUS ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | NEW ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | NOT ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | NULL ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | PLUS ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | THIS ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | TIDENT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | TRUE ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92) : 'freshtv338)) : 'freshtv340)
    | _ ->
        _menhir_fail ()) : 'freshtv342)) : 'freshtv344)

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "parser.mly"
       (string)
# 4326 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _ = _menhir_discard _menhir_env in
    _menhir_reduce107 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv323 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | ECOMM ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | IDENT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | TIMES ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12) : 'freshtv324)

and _menhir_goto_loption_separated_nonempty_list_COMMA_argument__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_argument__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv321 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument__) = Obj.magic _menhir_stack in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv319 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument__) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv315 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument__) = Obj.magic _menhir_stack in
        ((let _ = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv313 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument__) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, xs0) = _menhir_stack in
        let _v : 'tv_paren_separated_list_COMMA_argument__ = let x =
          let xs = xs0 in
          
# 135 "/usr/share/menhir/standard.mly"
    ( xs )
# 4375 "parser.ml"
          
        in
        
# 120 "parser.mly"
                      ( x )
# 4381 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv311) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_paren_separated_list_COMMA_argument__) = _v in
        ((match _menhir_s with
        | MenhirState25 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv301 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 4393 "parser.ml"
            )) * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 4397 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_paren_separated_list_COMMA_argument__) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv299 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 4405 "parser.ml"
            )) * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 4409 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            let (z : 'tv_paren_separated_list_COMMA_argument__) = _v in
            ((let (((_menhir_stack, _menhir_s, x), _), y) = _menhir_stack in
            let _v : 'tv_proto = 
# 103 "parser.mly"
        (
            {
                ident = Herit (x, y);
                args = z;
            }
        )
# 4422 "parser.ml"
             in
            _menhir_goto_proto _menhir_env _menhir_stack _menhir_s _v) : 'freshtv300)) : 'freshtv302)
        | MenhirState6 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv305 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 4430 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_paren_separated_list_COMMA_argument__) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv303 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 4438 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            let (y : 'tv_paren_separated_list_COMMA_argument__) = _v in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_proto = 
# 96 "parser.mly"
        (
            {
                ident = Type x;
                args = y;
            }
        )
# 4451 "parser.ml"
             in
            _menhir_goto_proto _menhir_env _menhir_stack _menhir_s _v) : 'freshtv304)) : 'freshtv306)
        | MenhirState63 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv309 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_qvar) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_paren_separated_list_COMMA_argument__) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv307 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_qvar) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            let (z : 'tv_paren_separated_list_COMMA_argument__) = _v in
            ((let ((_menhir_stack, _menhir_s, x), _, y) = _menhir_stack in
            let _v : 'tv_proto = 
# 89 "parser.mly"
        (
            { 
                ident = Qvar (x, y);
                args = z;
            }
        )
# 4472 "parser.ml"
             in
            _menhir_goto_proto _menhir_env _menhir_stack _menhir_s _v) : 'freshtv308)) : 'freshtv310)
        | _ ->
            _menhir_fail ()) : 'freshtv312)) : 'freshtv314)) : 'freshtv316)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv317 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv318)) : 'freshtv320)) : 'freshtv322)

and _menhir_reduce53 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_member_ = 
# 114 "/usr/share/menhir/standard.mly"
    ( [] )
# 4490 "parser.ml"
     in
    _menhir_goto_list_member_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run41 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv297) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_boption_VIRTUAL_ = 
# 50 "/usr/share/menhir/standard.mly"
    ( true )
# 4503 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv295) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_boption_VIRTUAL_) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv293 * _menhir_state * 'tv_boption_VIRTUAL_) = Obj.magic _menhir_stack in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv291 * _menhir_state * 'tv_boption_VIRTUAL_) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | TIDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | TINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | VOID ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51) : 'freshtv292)) : 'freshtv294)) : 'freshtv296)) : 'freshtv298)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "parser.mly"
       (string)
# 4532 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _ = _menhir_discard _menhir_env in
    _menhir_reduce103 _menhir_env (Obj.magic _menhir_stack)

and _menhir_goto_separated_nonempty_list_COMMA_preceded_PUBLIC_TIDENT__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_preceded_PUBLIC_TIDENT__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv279 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 4547 "parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_preceded_PUBLIC_TIDENT__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv277 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 4555 "parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_separated_nonempty_list_COMMA_preceded_PUBLIC_TIDENT__) = _v in
        ((let ((_menhir_stack, _menhir_s), x0) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_preceded_PUBLIC_TIDENT__ = let x =
          let x = x0 in
          
# 86 "/usr/share/menhir/standard.mly"
    ( x )
# 4565 "parser.ml"
          
        in
        
# 146 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 4571 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_preceded_PUBLIC_TIDENT__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv278)) : 'freshtv280)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv289) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_preceded_PUBLIC_TIDENT__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv287) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (x : 'tv_separated_nonempty_list_COMMA_preceded_PUBLIC_TIDENT__) = _v in
        ((let _v : 'tv_supers = 
# 78 "parser.mly"
    ( x )
# 4586 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv285) = _menhir_stack in
        let (_v : 'tv_supers) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv283) = Obj.magic _menhir_stack in
        let (_v : 'tv_supers) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv281) = Obj.magic _menhir_stack in
        let (x : 'tv_supers) = _v in
        ((let _v : 'tv_option_supers_ = 
# 31 "/usr/share/menhir/standard.mly"
    ( Some x )
# 4600 "parser.ml"
         in
        _menhir_goto_option_supers_ _menhir_env _menhir_stack _v) : 'freshtv282)) : 'freshtv284)) : 'freshtv286)) : 'freshtv288)) : 'freshtv290)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_decl_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_decl_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv271 * 'tv_boption_INCLUDE_) * _menhir_state * 'tv_list_decl_) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv269 * 'tv_boption_INCLUDE_) * _menhir_state * 'tv_list_decl_) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv265 * 'tv_boption_INCLUDE_) * _menhir_state * 'tv_list_decl_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv263 * 'tv_boption_INCLUDE_) * _menhir_state * 'tv_list_decl_) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, x), _, main) = _menhir_stack in
            let _v : (
# 47 "parser.mly"
      (Ast.program)
# 4628 "parser.ml"
            ) = 
# 53 "parser.mly"
    (
        {
            includes = x;
            program = main;
        }
    )
# 4637 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv261) = _menhir_stack in
            let (_v : (
# 47 "parser.mly"
      (Ast.program)
# 4644 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv259) = Obj.magic _menhir_stack in
            let (_v : (
# 47 "parser.mly"
      (Ast.program)
# 4651 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv257) = Obj.magic _menhir_stack in
            let (_1 : (
# 47 "parser.mly"
      (Ast.program)
# 4658 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv258)) : 'freshtv260)) : 'freshtv262)) : 'freshtv264)) : 'freshtv266)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv267 * 'tv_boption_INCLUDE_) * _menhir_state * 'tv_list_decl_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv268)) : 'freshtv270)) : 'freshtv272)
    | MenhirState191 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv275 * _menhir_state * 'tv_decl) * _menhir_state * 'tv_list_decl_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv273 * _menhir_state * 'tv_decl) * _menhir_state * 'tv_list_decl_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, xs) = _menhir_stack in
        let _v : 'tv_list_decl_ = 
# 116 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 4677 "parser.ml"
         in
        _menhir_goto_list_decl_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv274)) : 'freshtv276)
    | _ ->
        _menhir_fail ()

and _menhir_goto_type_rule : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_type_rule -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState21 | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv239 * _menhir_state * 'tv_type_rule) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv237 * _menhir_state * 'tv_type_rule) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ECOMM ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | IDENT _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9) : 'freshtv238)) : 'freshtv240)
    | MenhirState48 | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv243 * _menhir_state * 'tv_type_rule) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv241 * _menhir_state * 'tv_type_rule) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ECOMM ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | IDENT _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42) : 'freshtv242)) : 'freshtv244)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv247 * _menhir_state * 'tv_type_rule) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv245 * _menhir_state * 'tv_type_rule) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ECOMM ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | IDENT _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
        | TIDENT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52) : 'freshtv246)) : 'freshtv248)
    | MenhirState191 | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv251 * _menhir_state * 'tv_type_rule) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv249 * _menhir_state * 'tv_type_rule) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ECOMM ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | IDENT _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
        | TIDENT _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState70
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70) : 'freshtv250)) : 'freshtv252)
    | MenhirState184 | MenhirState75 | MenhirState137 | MenhirState179 | MenhirState145 | MenhirState153 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv255 * _menhir_state * 'tv_type_rule) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv253 * _menhir_state * 'tv_type_rule) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ECOMM ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | IDENT _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState162) : 'freshtv254)) : 'freshtv256)
    | _ ->
        _menhir_fail ()

and _menhir_reduce103 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 11 "parser.mly"
       (string)
# 4792 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, x) = _menhir_stack in
    let _v : 'tv_type_rule = 
# 125 "parser.mly"
               ( Tident x )
# 4799 "parser.ml"
     in
    _menhir_goto_type_rule _menhir_env _menhir_stack _menhir_s _v

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv235 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | TIDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | TINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | VOID ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv233) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState7 in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_argument__ = 
# 57 "/usr/share/menhir/standard.mly"
    ( [] )
# 4824 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_argument__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv234)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7) : 'freshtv236)

and _menhir_goto_option_supers_ : _menhir_env -> 'ttv_tail -> 'tv_option_supers_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv231 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 4839 "parser.ml"
    )) * 'tv_option_supers_) = Obj.magic _menhir_stack in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv229 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 4847 "parser.ml"
    )) * 'tv_option_supers_) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | LBRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv225 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 4856 "parser.ml"
        )) * 'tv_option_supers_) = Obj.magic _menhir_stack in
        ((let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv223 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 4863 "parser.ml"
        )) * 'tv_option_supers_) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | PUBLIC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv219 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 4872 "parser.ml"
            )) * 'tv_option_supers_) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv217 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 4879 "parser.ml"
            )) * 'tv_option_supers_) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | COLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv213 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 4888 "parser.ml"
                )) * 'tv_option_supers_) = Obj.magic _menhir_stack in
                ((let _tok = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv211 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 4895 "parser.ml"
                )) * 'tv_option_supers_) = _menhir_stack in
                let (_tok : token) = _tok in
                ((match _tok with
                | TIDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
                | TINT ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState40
                | VIRTUAL ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState40
                | VOID ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState40
                | RBRACE ->
                    _menhir_reduce53 _menhir_env (Obj.magic _menhir_stack) MenhirState40
                | _ ->
                    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                    _menhir_env._menhir_shifted <- (-1);
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40) : 'freshtv212)) : 'freshtv214)
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv215 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 4920 "parser.ml"
                )) * 'tv_option_supers_) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv216)) : 'freshtv218)) : 'freshtv220)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv221 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 4931 "parser.ml"
            )) * 'tv_option_supers_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv222)) : 'freshtv224)) : 'freshtv226)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv227 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 4942 "parser.ml"
        )) * 'tv_option_supers_) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)) : 'freshtv230)) : 'freshtv232)

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv209 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | TIDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv205 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 11 "parser.mly"
       (string)
# 4961 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv203 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 4969 "parser.ml"
        )) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv197 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 4978 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv195 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 4985 "parser.ml"
            )) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | PUBLIC ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState33
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33) : 'freshtv196)) : 'freshtv198)
        | LBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv199 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 5000 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), x0) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_preceded_PUBLIC_TIDENT__ = let x =
              let x = x0 in
              
# 86 "/usr/share/menhir/standard.mly"
    ( x )
# 5008 "parser.ml"
              
            in
            
# 144 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 5014 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_preceded_PUBLIC_TIDENT__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv200)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv201 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 5024 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)) : 'freshtv204)) : 'freshtv206)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv207 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)) : 'freshtv210)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState191 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv55 * _menhir_state * 'tv_decl) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState184 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv57 * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState179 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv59 * _menhir_state) * _menhir_state * 'tv_paren_expr_) * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState175 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState172 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv63 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState167 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv65) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv66)
    | MenhirState165 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv67 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState162 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv69 * _menhir_state * 'tv_type_rule) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState159 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv71 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState157 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state) * _menhir_state * 'tv_expr_str) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState155 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState154 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv77 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState153 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv79 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) * _menhir_state * 'tv_option_expr_) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv81 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) * _menhir_state * 'tv_option_expr_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState149 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState147 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv85 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState145 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state) * _menhir_state * 'tv_paren_expr_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState144 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv89 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState143 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState140 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState137 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * _menhir_state) * _menhir_state * 'tv_paren_expr_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState134 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv99 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv101 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState126 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv105 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv107 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState124 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv109 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv111 * _menhir_state * 'tv_unary_times) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv113 * _menhir_state * 'tv_unary_plus) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv115 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_operateur) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv117 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_operateur) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv119 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv121 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv123 * _menhir_state * 'tv_unary_minus) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125 * _menhir_state * 'tv_unary_minus) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127 * _menhir_state * 'tv_unary_plus) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv129 * _menhir_state * 'tv_unary_times) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv131 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv139 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 5253 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv143 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv145 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv147 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149 * _menhir_state * 'tv_proto) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151 * _menhir_state * 'tv_unary_times) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv153 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv155 * _menhir_state * 'tv_type_rule) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv157 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_qvar) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv159 * _menhir_state * 'tv_unary_times) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv161 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv163 * _menhir_state * 'tv_type_rule) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv165 * _menhir_state * 'tv_boption_VIRTUAL_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv167 * _menhir_state * 'tv_member) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv169 * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv171 * _menhir_state * 'tv_type_rule) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv173 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 5342 "parser.ml"
        )) * 'tv_option_supers_) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv175 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 5351 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv177) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv178)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv179 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 5364 "parser.ml"
        )) * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 5368 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv181 * _menhir_state * 'tv_argument) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv183 * _menhir_state * 'tv_unary_times) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv185 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv187 * _menhir_state * 'tv_type_rule) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv189 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv191 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 5402 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv193 * 'tv_boption_INCLUDE_) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv194)

and _menhir_reduce49 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_decl_ = 
# 114 "/usr/share/menhir/standard.mly"
    ( [] )
# 5416 "parser.ml"
     in
    _menhir_goto_list_decl_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv53) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_type_rule = 
# 123 "parser.mly"
           ( Void )
# 5429 "parser.ml"
     in
    _menhir_goto_type_rule _menhir_env _menhir_stack _menhir_s _v) : 'freshtv54)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv51) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_type_rule = 
# 124 "parser.mly"
           ( Int )
# 5442 "parser.ml"
     in
    _menhir_goto_type_rule _menhir_env _menhir_stack _menhir_s _v) : 'freshtv52)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "parser.mly"
       (string)
# 5449 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv49 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 5458 "parser.ml"
    )) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | COLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 5467 "parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState6 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv45 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 5476 "parser.ml"
        )) * _menhir_state) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv41 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 5485 "parser.ml"
            )) * _menhir_state) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv39 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 5492 "parser.ml"
            )) * _menhir_state) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | TIDENT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv35 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 5501 "parser.ml"
                )) * _menhir_state) = Obj.magic _menhir_stack in
                let (_v : (
# 11 "parser.mly"
       (string)
# 5506 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _tok = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv33 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 5514 "parser.ml"
                )) * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 5518 "parser.ml"
                )) = _menhir_stack in
                let (_tok : token) = _tok in
                ((match _tok with
                | LPAREN ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState25
                | _ ->
                    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                    _menhir_env._menhir_shifted <- (-1);
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25) : 'freshtv34)) : 'freshtv36)
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv37 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 5535 "parser.ml"
                )) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)) : 'freshtv40)) : 'freshtv42)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv43 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 5546 "parser.ml"
            )) * _menhir_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)) : 'freshtv46)) : 'freshtv48)
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | ECOMM | IDENT _ | TIDENT _ | TIMES ->
        _menhir_reduce103 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6) : 'freshtv50)

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv31 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 10 "parser.mly"
       (string)
# 5573 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv25 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 5581 "parser.ml"
        )) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv19) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv17) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | PUBLIC ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30) : 'freshtv18)) : 'freshtv20)
        | LBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv21) = Obj.magic _menhir_stack in
            ((let _v : 'tv_option_supers_ = 
# 29 "/usr/share/menhir/standard.mly"
    ( None )
# 5605 "parser.ml"
             in
            _menhir_goto_option_supers_ _menhir_env _menhir_stack _v) : 'freshtv22)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv23 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 5615 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)) : 'freshtv26)) : 'freshtv28)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)) : 'freshtv32)

and _menhir_goto_boption_INCLUDE_ : _menhir_env -> 'ttv_tail -> 'tv_boption_INCLUDE_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv15 * 'tv_boption_INCLUDE_) = Obj.magic _menhir_stack in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv13 * 'tv_boption_INCLUDE_) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | CLASS ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | TIDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | TINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | VOID ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | EOF ->
        _menhir_reduce49 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3) : 'freshtv14)) : 'freshtv16)

and _menhir_discard : _menhir_env -> token =
  fun _menhir_env ->
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = _menhir_env._menhir_lexer lexbuf in
    _menhir_env._menhir_token <- _tok;
    _menhir_env._menhir_startp <- lexbuf.Lexing.lex_start_p;
    _menhir_env._menhir_endp <- lexbuf.Lexing.lex_curr_p;
    let shifted = Pervasives.(+) _menhir_env._menhir_shifted 1 in
    if Pervasives.(>=) shifted 0 then
      _menhir_env._menhir_shifted <- shifted;
    _tok

and fichier : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 47 "parser.mly"
      (Ast.program)
# 5668 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = lexer lexbuf in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_startp = lexbuf.Lexing.lex_start_p;
        _menhir_endp = lexbuf.Lexing.lex_curr_p;
        _menhir_shifted = max_int;
        }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv11) = () in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv9) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | INCLUDE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        ((let _ = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1) = Obj.magic _menhir_stack in
        ((let _v : 'tv_boption_INCLUDE_ = 
# 50 "/usr/share/menhir/standard.mly"
    ( true )
# 5701 "parser.ml"
         in
        _menhir_goto_boption_INCLUDE_ _menhir_env _menhir_stack _v) : 'freshtv2)) : 'freshtv4)
    | CLASS | EOF | TIDENT _ | TINT | VOID ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
        ((let _v : 'tv_boption_INCLUDE_ = 
# 48 "/usr/share/menhir/standard.mly"
    ( false )
# 5710 "parser.ml"
         in
        _menhir_goto_boption_INCLUDE_ _menhir_env _menhir_stack _v) : 'freshtv6)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv8)) : 'freshtv10)) : 'freshtv12))




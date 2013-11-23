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
  | MenhirState190
  | MenhirState183
  | MenhirState178
  | MenhirState169
  | MenhirState167
  | MenhirState165
  | MenhirState161
  | MenhirState159
  | MenhirState158
  | MenhirState157
  | MenhirState155
  | MenhirState153
  | MenhirState151
  | MenhirState149
  | MenhirState148
  | MenhirState144
  | MenhirState141
  | MenhirState127
  | MenhirState122
  | MenhirState120
  | MenhirState106
  | MenhirState96
  | MenhirState95
  | MenhirState94
  | MenhirState93
  | MenhirState92
  | MenhirState90
  | MenhirState88
  | MenhirState86
  | MenhirState83
  | MenhirState78
  | MenhirState77
  | MenhirState76
  | MenhirState75
  | MenhirState74
  | MenhirState73
  | MenhirState71
  | MenhirState63
  | MenhirState58
  | MenhirState57
  | MenhirState51
  | MenhirState50
  | MenhirState47
  | MenhirState43
  | MenhirState41
  | MenhirState39
  | MenhirState32
  | MenhirState29
  | MenhirState25
  | MenhirState20
  | MenhirState14
  | MenhirState12
  | MenhirState9
  | MenhirState7
  | MenhirState3


# 3 "parser.mly"
  
    open Ast
    let types_lexhack = ref ["int", TINT]

# 144 "parser.ml"
let _eRR =
  Error

let rec _menhir_goto_nonempty_list_preceded_IN_expr_str__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nonempty_list_preceded_IN_expr_str__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState161 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv931 * _menhir_state) * _menhir_state * 'tv_expr_str) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_nonempty_list_preceded_IN_expr_str__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv929 * _menhir_state) * _menhir_state * 'tv_expr_str) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_nonempty_list_preceded_IN_expr_str__) = _v in
        ((let ((_menhir_stack, _menhir_s), _, x0) = _menhir_stack in
        let _v : 'tv_nonempty_list_preceded_IN_expr_str__ = let x =
          let x = x0 in
          
# 86 "/usr/share/menhir/standard.mly"
    ( x )
# 166 "parser.ml"
          
        in
        
# 126 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 172 "parser.ml"
         in
        _menhir_goto_nonempty_list_preceded_IN_expr_str__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv930)) : 'freshtv932)
    | MenhirState158 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv935 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_nonempty_list_preceded_IN_expr_str__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv933 * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (x : 'tv_nonempty_list_preceded_IN_expr_str__) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : 'tv_instruction = 
# 198 "parser.mly"
                                                   ( x )
# 188 "parser.ml"
         in
        _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv934)) : 'freshtv936)
    | _ ->
        _menhir_fail ()

and _menhir_goto_operateur : _menhir_env -> 'ttv_tail -> 'tv_operateur -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv927 * _menhir_state * 'tv_expr) * 'tv_operateur) = Obj.magic _menhir_stack in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv925 * _menhir_state * 'tv_expr) * 'tv_operateur) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | DECR ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | ECOMM ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | FALSE ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | IDENT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
    | INCR ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | INT _v ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
    | LPAREN ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | MINUS ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | NEW ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | NOT ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | NULL ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | PLUS ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | THIS ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | TIDENT _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
    | TIMES ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | TRUE ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127) : 'freshtv926)) : 'freshtv928)

and _menhir_goto_list_instruction_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_instruction_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv919 * _menhir_state) * _menhir_state * 'tv_list_instruction_) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv917 * _menhir_state) * _menhir_state * 'tv_list_instruction_) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv913 * _menhir_state) * _menhir_state * 'tv_list_instruction_) = Obj.magic _menhir_stack in
            ((let _ = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv911 * _menhir_state) * _menhir_state * 'tv_list_instruction_) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, x) = _menhir_stack in
            let _v : 'tv_bloc = 
# 206 "parser.mly"
                                 ( x )
# 265 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv909) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_bloc) = _v in
            ((match _menhir_s with
            | MenhirState76 | MenhirState183 | MenhirState141 | MenhirState149 | MenhirState178 | MenhirState157 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv903) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_bloc) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv901) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (x : 'tv_bloc) = _v in
                ((let _v : 'tv_instruction = 
# 197 "parser.mly"
             ( x )
# 284 "parser.ml"
                 in
                _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv902)) : 'freshtv904)
            | MenhirState75 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv907 * _menhir_state * 'tv_proto) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_bloc) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv905 * _menhir_state * 'tv_proto) = Obj.magic _menhir_stack in
                let (_ : _menhir_state) = _menhir_s in
                let (y : 'tv_bloc) = _v in
                ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
                let _v : 'tv_decl = 
# 63 "parser.mly"
                     ( (x, y) )
# 300 "parser.ml"
                 in
                _menhir_goto_decl _menhir_env _menhir_stack _menhir_s _v) : 'freshtv906)) : 'freshtv908)
            | _ ->
                _menhir_fail ()) : 'freshtv910)) : 'freshtv912)) : 'freshtv914)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv915 * _menhir_state) * _menhir_state * 'tv_list_instruction_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv916)) : 'freshtv918)) : 'freshtv920)
    | MenhirState183 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv923 * _menhir_state * 'tv_instruction) * _menhir_state * 'tv_list_instruction_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv921 * _menhir_state * 'tv_instruction) * _menhir_state * 'tv_list_instruction_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, xs) = _menhir_stack in
        let _v : 'tv_list_instruction_ = 
# 116 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 321 "parser.ml"
         in
        _menhir_goto_list_instruction_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv922)) : 'freshtv924)
    | _ ->
        _menhir_fail ()

and _menhir_reduce76 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_option_expr_ = 
# 29 "/usr/share/menhir/standard.mly"
    ( None )
# 332 "parser.ml"
     in
    _menhir_goto_option_expr_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run78 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv899 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | DECR ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | ECOMM ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | FALSE ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | IDENT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | INCR ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | INT _v ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | LPAREN ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | MINUS ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | NEW ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | NOT ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | NULL ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | PLUS ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | THIS ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | TIDENT _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | TIMES ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | TRUE ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78) : 'freshtv900)

and _menhir_run159 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv897 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | DECR ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | ECOMM ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | FALSE ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | IDENT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
    | INCR ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | INT _v ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
    | LPAREN ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | MINUS ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | NEW ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | NOT ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | NULL ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | PLUS ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | STRING _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv895) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState159 in
        let (_v : (
# 9 "parser.mly"
       (string)
# 420 "parser.ml"
        )) = _v in
        ((let _ = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv893) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : (
# 9 "parser.mly"
       (string)
# 429 "parser.ml"
        )) = _v in
        ((let _v : 'tv_expr_str = 
# 203 "parser.mly"
               ( String x )
# 434 "parser.ml"
         in
        _menhir_goto_expr_str _menhir_env _menhir_stack _menhir_s _v) : 'freshtv894)) : 'freshtv896)
    | THIS ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | TIDENT _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
    | TIMES ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | TRUE ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState159) : 'freshtv898)

and _menhir_goto_qvar : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_qvar -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState74 | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv877 * _menhir_state * 'tv_unary_times) * _menhir_state * 'tv_qvar) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv875 * _menhir_state * 'tv_unary_times) * _menhir_state * 'tv_qvar) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, x) = _menhir_stack in
        let _v : 'tv_qvar = 
# 136 "parser.mly"
                         ( UTimes x )
# 463 "parser.ml"
         in
        _menhir_goto_qvar _menhir_env _menhir_stack _menhir_s _v) : 'freshtv876)) : 'freshtv878)
    | MenhirState73 | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv881 * _menhir_state) * _menhir_state * 'tv_qvar) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv879 * _menhir_state) * _menhir_state * 'tv_qvar) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, x) = _menhir_stack in
        let _v : 'tv_qvar = 
# 137 "parser.mly"
                   ( EComm x )
# 475 "parser.ml"
         in
        _menhir_goto_qvar _menhir_env _menhir_stack _menhir_s _v) : 'freshtv880)) : 'freshtv882)
    | MenhirState71 | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv891 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_qvar) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv889 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_qvar) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv885 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_qvar) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv883 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_qvar) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | TIDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
            | TINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | VOID ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | RPAREN ->
                _menhir_reduce55 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63) : 'freshtv884)) : 'freshtv886)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv887 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_qvar) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv888)) : 'freshtv890)) : 'freshtv892)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_expr__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv843 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv841 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv837 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let _ = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv835 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, x), _, xs0) = _menhir_stack in
            let _v : 'tv_expr = let y =
              let xs = xs0 in
              
# 135 "/usr/share/menhir/standard.mly"
    ( xs )
# 542 "parser.ml"
              
            in
            
# 154 "parser.mly"
                                                         ( Apply (x, y) )
# 548 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv836)) : 'freshtv838)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv839 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv840)) : 'freshtv842)) : 'freshtv844)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv853 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 563 "parser.ml"
        )) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv851 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 571 "parser.ml"
        )) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv847 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 580 "parser.ml"
            )) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let _ = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv845 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 587 "parser.ml"
            )) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), t), _, xs0) = _menhir_stack in
            let _v : 'tv_expr = let x =
              let xs = xs0 in
              
# 135 "/usr/share/menhir/standard.mly"
    ( xs )
# 595 "parser.ml"
              
            in
            
# 156 "parser.mly"
        ( 
            types_lexhack := !types_lexhack :: (t, TIDENT t);
            Instance (t, x)
        )
# 604 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv846)) : 'freshtv848)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv849 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 614 "parser.ml"
            )) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv850)) : 'freshtv852)) : 'freshtv854)
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv863 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv861 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv857 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv855 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | DECR ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | ECOMM ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | FALSE ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | IDENT _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState153 _v
            | INCR ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | INT _v ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState153 _v
            | LPAREN ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | MINUS ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | NEW ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | NOT ->
                _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | NULL ->
                _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | PLUS ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | THIS ->
                _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | TIDENT _v ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState153 _v
            | TIMES ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | TRUE ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | SEMICOLON ->
                _menhir_reduce76 _menhir_env (Obj.magic _menhir_stack) MenhirState153
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState153) : 'freshtv856)) : 'freshtv858)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv859 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv860)) : 'freshtv862)) : 'freshtv864)
    | MenhirState155 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv873 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) * _menhir_state * 'tv_option_expr_) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv871 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) * _menhir_state * 'tv_option_expr_) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv867 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) * _menhir_state * 'tv_option_expr_) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv865 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) * _menhir_state * 'tv_option_expr_) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | COUT ->
                _menhir_run158 _menhir_env (Obj.magic _menhir_stack) MenhirState157
            | DECR ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState157
            | ECOMM ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState157
            | FALSE ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState157
            | FOR ->
                _menhir_run150 _menhir_env (Obj.magic _menhir_stack) MenhirState157
            | IDENT _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState157 _v
            | IF ->
                _menhir_run148 _menhir_env (Obj.magic _menhir_stack) MenhirState157
            | INCR ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState157
            | INT _v ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState157 _v
            | LBRACE ->
                _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState157
            | LPAREN ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState157
            | MINUS ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState157
            | NEW ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState157
            | NOT ->
                _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState157
            | NULL ->
                _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState157
            | PLUS ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState157
            | RETURN ->
                _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState157
            | SEMICOLON ->
                _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState157
            | THIS ->
                _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState157
            | TIDENT _v ->
                _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState157 _v
            | TIMES ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState157
            | TINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState157
            | TRUE ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState157
            | VOID ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState157
            | WHILE ->
                _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState157
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState157) : 'freshtv866)) : 'freshtv868)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv869 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) * _menhir_state * 'tv_option_expr_) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv870)) : 'freshtv872)) : 'freshtv874)
    | _ ->
        _menhir_fail ()

and _menhir_goto_expr_str : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr_str -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv833 * _menhir_state) * _menhir_state * 'tv_expr_str) = Obj.magic _menhir_stack in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv831 * _menhir_state) * _menhir_state * 'tv_expr_str) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | IN ->
        _menhir_run159 _menhir_env (Obj.magic _menhir_stack) MenhirState161
    | COUT | DECR | ECOMM | ELSE | FALSE | FOR | IDENT _ | IF | INCR | INT _ | LBRACE | LPAREN | MINUS | NEW | NOT | NULL | PLUS | RBRACE | RETURN | SEMICOLON | THIS | TIDENT _ | TIMES | TINT | TRUE | VOID | WHILE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv829 * _menhir_state) * _menhir_state * 'tv_expr_str) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, x0) = _menhir_stack in
        let _v : 'tv_nonempty_list_preceded_IN_expr_str__ = let x =
          let x = x0 in
          
# 86 "/usr/share/menhir/standard.mly"
    ( x )
# 783 "parser.ml"
          
        in
        
# 124 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 789 "parser.ml"
         in
        _menhir_goto_nonempty_list_preceded_IN_expr_str__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv830)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState161) : 'freshtv832)) : 'freshtv834)

and _menhir_goto_option_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_option_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState144 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv817 * _menhir_state) * _menhir_state * 'tv_option_expr_) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv815 * _menhir_state) * _menhir_state * 'tv_option_expr_) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv811 * _menhir_state) * _menhir_state * 'tv_option_expr_) = Obj.magic _menhir_stack in
            ((let _ = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv809 * _menhir_state) * _menhir_state * 'tv_option_expr_) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, x) = _menhir_stack in
            let _v : 'tv_instruction = 
# 199 "parser.mly"
                               ( x )
# 820 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv810)) : 'freshtv812)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv813 * _menhir_state) * _menhir_state * 'tv_option_expr_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv814)) : 'freshtv816)) : 'freshtv818)
    | MenhirState153 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv827 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) * _menhir_state * 'tv_option_expr_) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv825 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) * _menhir_state * 'tv_option_expr_) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv821 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) * _menhir_state * 'tv_option_expr_) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv819 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) * _menhir_state * 'tv_option_expr_) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | DECR ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState155
            | ECOMM ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState155
            | FALSE ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState155
            | IDENT _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState155 _v
            | INCR ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState155
            | INT _v ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState155 _v
            | LPAREN ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState155
            | MINUS ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState155
            | NEW ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState155
            | NOT ->
                _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState155
            | NULL ->
                _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState155
            | PLUS ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState155
            | THIS ->
                _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState155
            | TIDENT _v ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState155 _v
            | TIMES ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState155
            | TRUE ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState155
            | RPAREN ->
                _menhir_reduce57 _menhir_env (Obj.magic _menhir_stack) MenhirState155
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState155) : 'freshtv820)) : 'freshtv822)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv823 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) * _menhir_state * 'tv_option_expr_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv824)) : 'freshtv826)) : 'freshtv828)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState155 | MenhirState151 | MenhirState86 | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv793 * _menhir_state * 'tv_separated_nonempty_list_COMMA_expr_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv791 * _menhir_state * 'tv_separated_nonempty_list_COMMA_expr_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_loption_separated_nonempty_list_COMMA_expr__ = 
# 59 "/usr/share/menhir/standard.mly"
    ( x )
# 908 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv792)) : 'freshtv794)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv797 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_separated_nonempty_list_COMMA_expr_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv795 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_separated_nonempty_list_COMMA_expr_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, xs) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 146 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 920 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv796)) : 'freshtv798)
    | MenhirState169 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv807 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) * _menhir_state * (
# 11 "parser.mly"
       (string)
# 928 "parser.ml"
        )) * _menhir_state * 'tv_separated_nonempty_list_COMMA_expr_) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv805 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) * _menhir_state * (
# 11 "parser.mly"
       (string)
# 936 "parser.ml"
        )) * _menhir_state * 'tv_separated_nonempty_list_COMMA_expr_) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv801 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) * _menhir_state * (
# 11 "parser.mly"
       (string)
# 945 "parser.ml"
            )) * _menhir_state * 'tv_separated_nonempty_list_COMMA_expr_) = Obj.magic _menhir_stack in
            ((let _ = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv799 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) * _menhir_state * (
# 11 "parser.mly"
       (string)
# 952 "parser.ml"
            )) * _menhir_state * 'tv_separated_nonempty_list_COMMA_expr_) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s, x), _, y), _, x0), _, t) = _menhir_stack in
            let _v : 'tv_instruction = let z =
              let x = x0 in
              
# 86 "/usr/share/menhir/standard.mly"
    ( x )
# 960 "parser.ml"
              
            in
            
# 192 "parser.mly"
        ( Var (x, y, (Tident (z, t))) )
# 966 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv800)) : 'freshtv802)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv803 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) * _menhir_state * (
# 11 "parser.mly"
       (string)
# 976 "parser.ml"
            )) * _menhir_state * 'tv_separated_nonempty_list_COMMA_expr_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv804)) : 'freshtv806)) : 'freshtv808)
    | _ ->
        _menhir_fail ()

and _menhir_run99 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv789) = Obj.magic _menhir_stack in
    ((let _v : 'tv_operateur = 
# 180 "parser.mly"
            ( Times )
# 991 "parser.ml"
     in
    _menhir_goto_operateur _menhir_env _menhir_stack _v) : 'freshtv790)

and _menhir_run100 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv787) = Obj.magic _menhir_stack in
    ((let _v : 'tv_operateur = 
# 178 "parser.mly"
           ( Plus )
# 1003 "parser.ml"
     in
    _menhir_goto_operateur _menhir_env _menhir_stack _v) : 'freshtv788)

and _menhir_run101 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv785) = Obj.magic _menhir_stack in
    ((let _v : 'tv_operateur = 
# 184 "parser.mly"
         ( Or )
# 1015 "parser.ml"
     in
    _menhir_goto_operateur _menhir_env _menhir_stack _v) : 'freshtv786)

and _menhir_run102 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv783) = Obj.magic _menhir_stack in
    ((let _v : 'tv_operateur = 
# 173 "parser.mly"
          ( Neq )
# 1027 "parser.ml"
     in
    _menhir_goto_operateur _menhir_env _menhir_stack _v) : 'freshtv784)

and _menhir_run103 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv781) = Obj.magic _menhir_stack in
    ((let _v : 'tv_operateur = 
# 182 "parser.mly"
          ( Mod )
# 1039 "parser.ml"
     in
    _menhir_goto_operateur _menhir_env _menhir_stack _v) : 'freshtv782)

and _menhir_run104 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv779) = Obj.magic _menhir_stack in
    ((let _v : 'tv_operateur = 
# 179 "parser.mly"
            ( Minus )
# 1051 "parser.ml"
     in
    _menhir_goto_operateur _menhir_env _menhir_stack _v) : 'freshtv780)

and _menhir_run105 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv777) = Obj.magic _menhir_stack in
    ((let _v : 'tv_operateur = 
# 174 "parser.mly"
         ( Lt )
# 1063 "parser.ml"
     in
    _menhir_goto_operateur _menhir_env _menhir_stack _v) : 'freshtv778)

and _menhir_run106 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv775 * _menhir_state * 'tv_expr) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | DECR ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | ECOMM ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | FALSE ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | IDENT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | INCR ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | INT _v ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | LPAREN ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | MINUS ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | NEW ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | NOT ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | NULL ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | PLUS ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | THIS ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | TIDENT _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | TIMES ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | TRUE ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | RPAREN ->
        _menhir_reduce57 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106) : 'freshtv776)

and _menhir_run111 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv773) = Obj.magic _menhir_stack in
    ((let _v : 'tv_operateur = 
# 175 "parser.mly"
          ( Leq )
# 1121 "parser.ml"
     in
    _menhir_goto_operateur _menhir_env _menhir_stack _v) : 'freshtv774)

and _menhir_run112 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv771 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
    ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
    let _v : 'tv_expr = 
# 162 "parser.mly"
                  ( Incr (IncrR, x) )
# 1134 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv772)

and _menhir_run113 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv769) = Obj.magic _menhir_stack in
    ((let _v : 'tv_operateur = 
# 176 "parser.mly"
         ( Gt )
# 1146 "parser.ml"
     in
    _menhir_goto_operateur _menhir_env _menhir_stack _v) : 'freshtv770)

and _menhir_run114 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv767) = Obj.magic _menhir_stack in
    ((let _v : 'tv_operateur = 
# 177 "parser.mly"
          ( Geq )
# 1158 "parser.ml"
     in
    _menhir_goto_operateur _menhir_env _menhir_stack _v) : 'freshtv768)

and _menhir_run115 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv765) = Obj.magic _menhir_stack in
    ((let _v : 'tv_operateur = 
# 172 "parser.mly"
         ( Eq )
# 1170 "parser.ml"
     in
    _menhir_goto_operateur _menhir_env _menhir_stack _v) : 'freshtv766)

and _menhir_run116 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv763 * _menhir_state * 'tv_expr) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv759 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        let (_v : (
# 10 "parser.mly"
       (string)
# 1187 "parser.ml"
        )) = _v in
        ((let _ = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv757 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        let (y : (
# 10 "parser.mly"
       (string)
# 1195 "parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_expr = 
# 151 "parser.mly"
                         ( Dot (x, y) )
# 1201 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv758)) : 'freshtv760)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv761 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv762)) : 'freshtv764)

and _menhir_run118 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv755) = Obj.magic _menhir_stack in
    ((let _v : 'tv_operateur = 
# 181 "parser.mly"
          ( Div )
# 1220 "parser.ml"
     in
    _menhir_goto_operateur _menhir_env _menhir_stack _v) : 'freshtv756)

and _menhir_run119 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv753 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
    ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
    let _v : 'tv_expr = 
# 163 "parser.mly"
                  ( Incr (DecrR, x) )
# 1233 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv754)

and _menhir_run122 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv751 * _menhir_state * 'tv_expr) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | DECR ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState122
    | ECOMM ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState122
    | FALSE ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState122
    | IDENT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
    | INCR ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState122
    | INT _v ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
    | LPAREN ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState122
    | MINUS ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState122
    | NEW ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState122
    | NOT ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState122
    | NULL ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState122
    | PLUS ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState122
    | THIS ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState122
    | TIDENT _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
    | TIMES ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState122
    | TRUE ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState122
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122) : 'freshtv752)

and _menhir_run124 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv749 * _menhir_state * 'tv_expr) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv745 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        let (_v : (
# 10 "parser.mly"
       (string)
# 1294 "parser.ml"
        )) = _v in
        ((let _ = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv743 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        let (y : (
# 10 "parser.mly"
       (string)
# 1302 "parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_expr = 
# 152 "parser.mly"
                           ( Arrow (x, y))
# 1308 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv744)) : 'freshtv746)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv747 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv748)) : 'freshtv750)

and _menhir_run126 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv741) = Obj.magic _menhir_stack in
    ((let _v : 'tv_operateur = 
# 183 "parser.mly"
          ( And )
# 1327 "parser.ml"
     in
    _menhir_goto_operateur _menhir_env _menhir_stack _v) : 'freshtv742)

and _menhir_goto_instruction : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_instruction -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState157 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv715 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) * _menhir_state * 'tv_option_expr_) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv713 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) * _menhir_state * 'tv_option_expr_) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s), _, xs0), _, y), _, xs1), _, t) = _menhir_stack in
        let _v : 'tv_instruction = let z =
          let xs = xs1 in
          
# 135 "/usr/share/menhir/standard.mly"
    ( xs )
# 1346 "parser.ml"
          
        in
        let x =
          let xs = xs0 in
          
# 135 "/usr/share/menhir/standard.mly"
    ( xs )
# 1354 "parser.ml"
          
        in
        
# 196 "parser.mly"
                                                                                                                              ( For (x, y, z, t) )
# 1360 "parser.ml"
         in
        _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv714)) : 'freshtv716)
    | MenhirState149 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv727 * _menhir_state) * _menhir_state * 'tv_paren) * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv725 * _menhir_state) * _menhir_state * 'tv_paren) * _menhir_state * 'tv_instruction) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv719 * _menhir_state) * _menhir_state * 'tv_paren) * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv717 * _menhir_state) * _menhir_state * 'tv_paren) * _menhir_state * 'tv_instruction) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | COUT ->
                _menhir_run158 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | DECR ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | ECOMM ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | FALSE ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | FOR ->
                _menhir_run150 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | IDENT _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState178 _v
            | IF ->
                _menhir_run148 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | INCR ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | INT _v ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState178 _v
            | LBRACE ->
                _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | LPAREN ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | MINUS ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | NEW ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | NOT ->
                _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | NULL ->
                _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | PLUS ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | RETURN ->
                _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | SEMICOLON ->
                _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | THIS ->
                _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | TIDENT _v ->
                _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState178 _v
            | TIMES ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | TINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | TRUE ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | VOID ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | WHILE ->
                _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState178) : 'freshtv718)) : 'freshtv720)
        | COUT | DECR | ECOMM | FALSE | FOR | IDENT _ | IF | INCR | INT _ | LBRACE | LPAREN | MINUS | NEW | NOT | NULL | PLUS | RBRACE | RETURN | SEMICOLON | THIS | TIDENT _ | TIMES | TINT | TRUE | VOID | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv721 * _menhir_state) * _menhir_state * 'tv_paren) * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, _), _, y) = _menhir_stack in
            let _v : 'tv_instruction = 
# 193 "parser.mly"
                             ( If (x, y) )
# 1441 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv722)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv723 * _menhir_state) * _menhir_state * 'tv_paren) * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv724)) : 'freshtv726)) : 'freshtv728)
    | MenhirState178 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv731 * _menhir_state) * _menhir_state * 'tv_paren) * _menhir_state * 'tv_instruction) * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv729 * _menhir_state) * _menhir_state * 'tv_paren) * _menhir_state * 'tv_instruction) * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, _), _, y), _, z) = _menhir_stack in
        let _v : 'tv_instruction = 
# 194 "parser.mly"
                                                ( IfElse (x, y, z) )
# 1460 "parser.ml"
         in
        _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv730)) : 'freshtv732)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv735 * _menhir_state) * _menhir_state * 'tv_paren) * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv733 * _menhir_state) * _menhir_state * 'tv_paren) * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, _), _, y) = _menhir_stack in
        let _v : 'tv_instruction = 
# 195 "parser.mly"
                                ( While (x, y) )
# 1472 "parser.ml"
         in
        _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv734)) : 'freshtv736)
    | MenhirState183 | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv739 * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv737 * _menhir_state * 'tv_instruction) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | COUT ->
            _menhir_run158 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | DECR ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | ECOMM ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | FALSE ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | FOR ->
            _menhir_run150 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | IDENT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
        | IF ->
            _menhir_run148 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | INCR ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | INT _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
        | LBRACE ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | LPAREN ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | MINUS ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | NEW ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | NOT ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | NULL ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | PLUS ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | RETURN ->
            _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | SEMICOLON ->
            _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | THIS ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | TIDENT _v ->
            _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | TINT ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | TRUE ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | VOID ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | WHILE ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | RBRACE ->
            _menhir_reduce51 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState183) : 'freshtv738)) : 'freshtv740)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_var_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_var_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv691 * _menhir_state * 'tv_var) * _menhir_state * 'tv_separated_nonempty_list_COMMA_var_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv689 * _menhir_state * 'tv_var) * _menhir_state * 'tv_separated_nonempty_list_COMMA_var_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, xs) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_var_ = 
# 146 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 1556 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_var_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv690)) : 'freshtv692)
    | MenhirState71 | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv711 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_separated_nonempty_list_COMMA_var_) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv709 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_separated_nonempty_list_COMMA_var_) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv705 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_separated_nonempty_list_COMMA_var_) = Obj.magic _menhir_stack in
            ((let _ = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv703 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_separated_nonempty_list_COMMA_var_) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, x), _, y) = _menhir_stack in
            let _v : 'tv_decl_vars = 
# 67 "parser.mly"
    ( (x, y) )
# 1578 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv701) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_decl_vars) = _v in
            ((match _menhir_s with
            | MenhirState39 | MenhirState47 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv695) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_decl_vars) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv693) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (x : 'tv_decl_vars) = _v in
                ((let _v : 'tv_member = 
# 78 "parser.mly"
                    ( x )
# 1597 "parser.ml"
                 in
                _menhir_goto_member _menhir_env _menhir_stack _menhir_s _v) : 'freshtv694)) : 'freshtv696)
            | MenhirState190 | MenhirState3 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv699) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_decl_vars) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv697) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (x : 'tv_decl_vars) = _v in
                ((let _v : 'tv_decl = 
# 61 "parser.mly"
                  ( x )
# 1612 "parser.ml"
                 in
                _menhir_goto_decl _menhir_env _menhir_stack _menhir_s _v) : 'freshtv698)) : 'freshtv700)
            | _ ->
                _menhir_fail ()) : 'freshtv702)) : 'freshtv704)) : 'freshtv706)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv707 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_separated_nonempty_list_COMMA_var_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv708)) : 'freshtv710)) : 'freshtv712)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_argument_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_argument_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState63 | MenhirState25 | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv683) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_argument_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv681) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_separated_nonempty_list_COMMA_argument_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_argument__ = 
# 59 "/usr/share/menhir/standard.mly"
    ( x )
# 1642 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_argument__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv682)) : 'freshtv684)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv687 * _menhir_state * 'tv_argument) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_argument_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv685 * _menhir_state * 'tv_argument) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_separated_nonempty_list_COMMA_argument_) = _v in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_argument_ = 
# 146 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 1658 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_argument_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv686)) : 'freshtv688)
    | _ ->
        _menhir_fail ()

and _menhir_reduce51 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_instruction_ = 
# 114 "/usr/share/menhir/standard.mly"
    ( [] )
# 1669 "parser.ml"
     in
    _menhir_goto_list_instruction_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run77 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv679 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | LPAREN ->
        _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77) : 'freshtv680)

and _menhir_run142 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "parser.mly"
       (string)
# 1691 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv677 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 1700 "parser.ml"
    )) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | COLON ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
    | ECOMM | IDENT _ | TIMES ->
        _menhir_reduce100 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv675 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 1715 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv676)) : 'freshtv678)

and _menhir_run143 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv673) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_instruction = 
# 187 "parser.mly"
                ( Nop )
# 1729 "parser.ml"
     in
    _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv674)

and _menhir_run144 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv671 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | DECR ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | ECOMM ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | FALSE ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | IDENT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
    | INCR ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | INT _v ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
    | LPAREN ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | MINUS ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | NEW ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | NOT ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | NULL ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | PLUS ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | THIS ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | TIDENT _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
    | TIMES ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | TRUE ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | SEMICOLON ->
        _menhir_reduce76 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState144) : 'freshtv672)

and _menhir_run148 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv669 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | LPAREN ->
        _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState148
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState148) : 'freshtv670)

and _menhir_run150 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv667 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv663 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv661 * _menhir_state) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | DECR ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | ECOMM ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | FALSE ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | IDENT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
        | INCR ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | INT _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
        | LPAREN ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | MINUS ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | NEW ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | NOT ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | NULL ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | PLUS ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | THIS ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | TIDENT _v ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | TRUE ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | SEMICOLON ->
            _menhir_reduce57 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState151) : 'freshtv662)) : 'freshtv664)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv665 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv666)) : 'freshtv668)

and _menhir_run158 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv659 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | IN ->
        _menhir_run159 _menhir_env (Obj.magic _menhir_stack) MenhirState158
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState158) : 'freshtv660)

and _menhir_goto_qident : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_qident -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState71 | MenhirState73 | MenhirState74 | MenhirState51 | MenhirState57 | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv653) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_qident) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv651) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_qident) = _v in
        ((let _v : 'tv_qvar = 
# 135 "parser.mly"
               ( Qident x )
# 1887 "parser.ml"
         in
        _menhir_goto_qvar _menhir_env _menhir_stack _menhir_s _v) : 'freshtv652)) : 'freshtv654)
    | MenhirState183 | MenhirState76 | MenhirState141 | MenhirState178 | MenhirState149 | MenhirState157 | MenhirState167 | MenhirState169 | MenhirState159 | MenhirState155 | MenhirState153 | MenhirState151 | MenhirState144 | MenhirState78 | MenhirState83 | MenhirState86 | MenhirState88 | MenhirState90 | MenhirState92 | MenhirState93 | MenhirState94 | MenhirState95 | MenhirState127 | MenhirState122 | MenhirState120 | MenhirState106 | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv657) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_qident) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv655) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_qident) = _v in
        ((let _v : 'tv_expr = 
# 149 "parser.mly"
               ( Qident x )
# 1902 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv656)) : 'freshtv658)
    | _ ->
        _menhir_fail ()

and _menhir_reduce57 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_expr__ = 
# 57 "/usr/share/menhir/standard.mly"
    ( [] )
# 1913 "parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv509 * _menhir_state * 'tv_unary_minus) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv507 * _menhir_state * 'tv_unary_minus) * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack)
        | ARROW ->
            _menhir_run124 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run122 _menhir_env (Obj.magic _menhir_stack)
        | DECR ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack)
        | DOT ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run113 _menhir_env (Obj.magic _menhir_stack)
        | INCR ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | COUT | ECOMM | ELSE | FALSE | FOR | IDENT _ | IF | IN | INT _ | LBRACE | NEW | NOT | NULL | RBRACE | RETURN | RPAREN | SEMICOLON | THIS | TIDENT _ | TINT | TRUE | VOID | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv503 * _menhir_state * 'tv_unary_minus) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, x) = _menhir_stack in
            let _v : 'tv_expr = 
# 166 "parser.mly"
                         ( UOp (UMinus, x) )
# 1975 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv504)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv505 * _menhir_state * 'tv_unary_minus) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv506)) : 'freshtv508)) : 'freshtv510)
    | MenhirState151 | MenhirState155 | MenhirState169 | MenhirState86 | MenhirState120 | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv521 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv519 * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack)
        | ARROW ->
            _menhir_run124 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run122 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv513 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv511 * _menhir_state * 'tv_expr) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | DECR ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | ECOMM ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | FALSE ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | IDENT _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
            | INCR ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | INT _v ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
            | LPAREN ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | MINUS ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | NEW ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | NOT ->
                _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | NULL ->
                _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | PLUS ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | THIS ->
                _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | TIDENT _v ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
            | TIMES ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | TRUE ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState120) : 'freshtv512)) : 'freshtv514)
        | DECR ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack)
        | DOT ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run113 _menhir_env (Obj.magic _menhir_stack)
        | INCR ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv515 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 144 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 2083 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv516)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv517 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv518)) : 'freshtv520)) : 'freshtv522)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv529 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv527 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack)
        | ARROW ->
            _menhir_run124 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run122 _menhir_env (Obj.magic _menhir_stack)
        | DECR ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack)
        | DOT ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run113 _menhir_env (Obj.magic _menhir_stack)
        | INCR ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | COUT | ECOMM | ELSE | FALSE | FOR | IDENT _ | IF | IN | INT _ | LBRACE | NEW | NOT | NULL | RBRACE | RETURN | RPAREN | SEMICOLON | THIS | TIDENT _ | TINT | TRUE | VOID | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv523 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, x), _, y) = _menhir_stack in
            let _v : 'tv_expr = 
# 153 "parser.mly"
                           ( Assign (x, y) )
# 2147 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv524)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv525 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv526)) : 'freshtv528)) : 'freshtv530)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv537 * _menhir_state * 'tv_expr) * 'tv_operateur) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv535 * _menhir_state * 'tv_expr) * 'tv_operateur) * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack)
        | ARROW ->
            _menhir_run124 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run122 _menhir_env (Obj.magic _menhir_stack)
        | DECR ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack)
        | DOT ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run113 _menhir_env (Obj.magic _menhir_stack)
        | INCR ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | COUT | ECOMM | ELSE | FALSE | FOR | IDENT _ | IF | IN | INT _ | LBRACE | NEW | NOT | NULL | RBRACE | RETURN | RPAREN | SEMICOLON | THIS | TIDENT _ | TINT | TRUE | VOID | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv531 * _menhir_state * 'tv_expr) * 'tv_operateur) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, x), y), _, z) = _menhir_stack in
            let _v : 'tv_expr = 
# 168 "parser.mly"
                                ( Op (y, x, z) )
# 2211 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv532)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv533 * _menhir_state * 'tv_expr) * 'tv_operateur) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv534)) : 'freshtv536)) : 'freshtv538)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv545 * _menhir_state * 'tv_unary_plus) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv543 * _menhir_state * 'tv_unary_plus) * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack)
        | ARROW ->
            _menhir_run124 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run122 _menhir_env (Obj.magic _menhir_stack)
        | DECR ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack)
        | DOT ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run113 _menhir_env (Obj.magic _menhir_stack)
        | INCR ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | COUT | ECOMM | ELSE | FALSE | FOR | IDENT _ | IF | IN | INT _ | LBRACE | NEW | NOT | NULL | RBRACE | RETURN | RPAREN | SEMICOLON | THIS | TIDENT _ | TINT | TRUE | VOID | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv539 * _menhir_state * 'tv_unary_plus) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, x) = _menhir_stack in
            let _v : 'tv_expr = 
# 167 "parser.mly"
                        ( UOp (UPlus, x) )
# 2275 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv540)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv541 * _menhir_state * 'tv_unary_plus) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv542)) : 'freshtv544)) : 'freshtv546)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv553 * _menhir_state * 'tv_unary_times) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv551 * _menhir_state * 'tv_unary_times) * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack)
        | ARROW ->
            _menhir_run124 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run122 _menhir_env (Obj.magic _menhir_stack)
        | DECR ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack)
        | DOT ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run113 _menhir_env (Obj.magic _menhir_stack)
        | INCR ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | COUT | ECOMM | ELSE | FALSE | FOR | IDENT _ | IF | IN | INT _ | LBRACE | NEW | NOT | NULL | RBRACE | RETURN | RPAREN | SEMICOLON | THIS | TIDENT _ | TINT | TRUE | VOID | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv547 * _menhir_state * 'tv_unary_times) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, x) = _menhir_stack in
            let _v : 'tv_expr = 
# 150 "parser.mly"
                         ( UOp (UTimes, x) )
# 2339 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv548)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv549 * _menhir_state * 'tv_unary_times) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv550)) : 'freshtv552)) : 'freshtv554)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv561 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv559 * _menhir_state) * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ARROW ->
            _menhir_run124 _menhir_env (Obj.magic _menhir_stack)
        | DECR ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack)
        | DOT ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack)
        | INCR ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | AND | ASSIGN | COMMA | COUT | DIV | ECOMM | ELSE | EQ | FALSE | FOR | GEQ | GT | IDENT _ | IF | IN | INT _ | LBRACE | LEQ | LT | MINUS | MOD | NEQ | NEW | NOT | NULL | OR | PLUS | RBRACE | RETURN | RPAREN | SEMICOLON | THIS | TIDENT _ | TIMES | TINT | TRUE | VOID | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv555 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, x) = _menhir_stack in
            let _v : 'tv_expr = 
# 161 "parser.mly"
                  ( Incr (DecrL, x) )
# 2375 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv556)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv557 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv558)) : 'freshtv560)) : 'freshtv562)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv569 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv567 * _menhir_state) * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ARROW ->
            _menhir_run124 _menhir_env (Obj.magic _menhir_stack)
        | DECR ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack)
        | DOT ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack)
        | INCR ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | AND | ASSIGN | COMMA | COUT | DIV | ECOMM | ELSE | EQ | FALSE | FOR | GEQ | GT | IDENT _ | IF | IN | INT _ | LBRACE | LEQ | LT | MINUS | MOD | NEQ | NEW | NOT | NULL | OR | PLUS | RBRACE | RETURN | RPAREN | SEMICOLON | THIS | TIDENT _ | TIMES | TINT | TRUE | VOID | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv563 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, x) = _menhir_stack in
            let _v : 'tv_expr = 
# 164 "parser.mly"
                   ( UOp (Ecomm, x) )
# 2411 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv564)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv565 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv566)) : 'freshtv568)) : 'freshtv570)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv577 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv575 * _menhir_state) * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ARROW ->
            _menhir_run124 _menhir_env (Obj.magic _menhir_stack)
        | DECR ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack)
        | DOT ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack)
        | INCR ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | AND | ASSIGN | COMMA | COUT | DIV | ECOMM | ELSE | EQ | FALSE | FOR | GEQ | GT | IDENT _ | IF | IN | INT _ | LBRACE | LEQ | LT | MINUS | MOD | NEQ | NEW | NOT | NULL | OR | PLUS | RBRACE | RETURN | RPAREN | SEMICOLON | THIS | TIDENT _ | TIMES | TINT | TRUE | VOID | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv571 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, x) = _menhir_stack in
            let _v : 'tv_expr = 
# 160 "parser.mly"
                  ( Incr (IncrL, x) )
# 2447 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv572)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv573 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv574)) : 'freshtv576)) : 'freshtv578)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv587 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv585 * _menhir_state) * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack)
        | ARROW ->
            _menhir_run124 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run122 _menhir_env (Obj.magic _menhir_stack)
        | DECR ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack)
        | DOT ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run113 _menhir_env (Obj.magic _menhir_stack)
        | INCR ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv581 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _ = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv579 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, x) = _menhir_stack in
            let _v : 'tv_expr = 
# 169 "parser.mly"
                           ( x )
# 2512 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv580)) : 'freshtv582)
        | TIMES ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv583 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv584)) : 'freshtv586)) : 'freshtv588)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv595 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv593 * _menhir_state) * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ARROW ->
            _menhir_run124 _menhir_env (Obj.magic _menhir_stack)
        | DECR ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack)
        | DOT ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack)
        | INCR ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | AND | ASSIGN | COMMA | COUT | DIV | ECOMM | ELSE | EQ | FALSE | FOR | GEQ | GT | IDENT _ | IF | IN | INT _ | LBRACE | LEQ | LT | MINUS | MOD | NEQ | NEW | NOT | NULL | OR | PLUS | RBRACE | RETURN | RPAREN | SEMICOLON | THIS | TIDENT _ | TIMES | TINT | TRUE | VOID | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv589 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, x) = _menhir_stack in
            let _v : 'tv_expr = 
# 165 "parser.mly"
                 ( UOp (Not, x) )
# 2550 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv590)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv591 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv592)) : 'freshtv594)) : 'freshtv596)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv615 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv613 * _menhir_state) * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack)
        | ARROW ->
            _menhir_run124 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run122 _menhir_env (Obj.magic _menhir_stack)
        | DECR ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack)
        | DOT ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run113 _menhir_env (Obj.magic _menhir_stack)
        | INCR ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv609 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _ = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv607 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, x) = _menhir_stack in
            let _v : 'tv_paren = 
# 117 "parser.mly"
                         ( x )
# 2615 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv605) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_paren) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            match _menhir_s with
            | MenhirState77 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv599 * _menhir_state) * _menhir_state * 'tv_paren) = Obj.magic _menhir_stack in
                ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                let _tok = _menhir_env._menhir_token in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv597 * _menhir_state) * _menhir_state * 'tv_paren) = _menhir_stack in
                let (_tok : token) = _tok in
                ((match _tok with
                | COUT ->
                    _menhir_run158 _menhir_env (Obj.magic _menhir_stack) MenhirState141
                | DECR ->
                    _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState141
                | ECOMM ->
                    _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState141
                | FALSE ->
                    _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState141
                | FOR ->
                    _menhir_run150 _menhir_env (Obj.magic _menhir_stack) MenhirState141
                | IDENT _v ->
                    _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
                | IF ->
                    _menhir_run148 _menhir_env (Obj.magic _menhir_stack) MenhirState141
                | INCR ->
                    _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState141
                | INT _v ->
                    _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
                | LBRACE ->
                    _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState141
                | LPAREN ->
                    _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState141
                | MINUS ->
                    _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState141
                | NEW ->
                    _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState141
                | NOT ->
                    _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState141
                | NULL ->
                    _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState141
                | PLUS ->
                    _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState141
                | RETURN ->
                    _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState141
                | SEMICOLON ->
                    _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState141
                | THIS ->
                    _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState141
                | TIDENT _v ->
                    _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
                | TIMES ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState141
                | TINT ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState141
                | TRUE ->
                    _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState141
                | VOID ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState141
                | WHILE ->
                    _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState141
                | _ ->
                    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                    _menhir_env._menhir_shifted <- (-1);
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141) : 'freshtv598)) : 'freshtv600)
            | MenhirState148 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv603 * _menhir_state) * _menhir_state * 'tv_paren) = Obj.magic _menhir_stack in
                ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                let _tok = _menhir_env._menhir_token in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv601 * _menhir_state) * _menhir_state * 'tv_paren) = _menhir_stack in
                let (_tok : token) = _tok in
                ((match _tok with
                | COUT ->
                    _menhir_run158 _menhir_env (Obj.magic _menhir_stack) MenhirState149
                | DECR ->
                    _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState149
                | ECOMM ->
                    _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState149
                | FALSE ->
                    _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState149
                | FOR ->
                    _menhir_run150 _menhir_env (Obj.magic _menhir_stack) MenhirState149
                | IDENT _v ->
                    _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
                | IF ->
                    _menhir_run148 _menhir_env (Obj.magic _menhir_stack) MenhirState149
                | INCR ->
                    _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState149
                | INT _v ->
                    _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
                | LBRACE ->
                    _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState149
                | LPAREN ->
                    _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState149
                | MINUS ->
                    _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState149
                | NEW ->
                    _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState149
                | NOT ->
                    _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState149
                | NULL ->
                    _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState149
                | PLUS ->
                    _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState149
                | RETURN ->
                    _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState149
                | SEMICOLON ->
                    _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState149
                | THIS ->
                    _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState149
                | TIDENT _v ->
                    _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
                | TIMES ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState149
                | TINT ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState149
                | TRUE ->
                    _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState149
                | VOID ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState149
                | WHILE ->
                    _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState149
                | _ ->
                    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                    _menhir_env._menhir_shifted <- (-1);
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState149) : 'freshtv602)) : 'freshtv604)
            | _ ->
                _menhir_fail ()) : 'freshtv606)) : 'freshtv608)) : 'freshtv610)
        | TIMES ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv611 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv612)) : 'freshtv614)) : 'freshtv616)
    | MenhirState153 | MenhirState144 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv623 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv621 * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack)
        | ARROW ->
            _menhir_run124 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run122 _menhir_env (Obj.magic _menhir_stack)
        | DECR ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack)
        | DOT ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run113 _menhir_env (Obj.magic _menhir_stack)
        | INCR ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv617 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_option_expr_ = 
# 31 "/usr/share/menhir/standard.mly"
    ( Some x )
# 2814 "parser.ml"
             in
            _menhir_goto_option_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv618)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv619 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv620)) : 'freshtv622)) : 'freshtv624)
    | MenhirState159 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv631 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv629 * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack)
        | ARROW ->
            _menhir_run124 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run122 _menhir_env (Obj.magic _menhir_stack)
        | DECR ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack)
        | DOT ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run113 _menhir_env (Obj.magic _menhir_stack)
        | INCR ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack)
        | COUT | ECOMM | ELSE | FALSE | FOR | IDENT _ | IF | IN | INT _ | LBRACE | NEW | NOT | NULL | RBRACE | RETURN | SEMICOLON | THIS | TIDENT _ | TINT | TRUE | VOID | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv625 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_expr_str = 
# 202 "parser.mly"
             ( Expr x )
# 2878 "parser.ml"
             in
            _menhir_goto_expr_str _menhir_env _menhir_stack _menhir_s _v) : 'freshtv626)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv627 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv628)) : 'freshtv630)) : 'freshtv632)
    | MenhirState167 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv639 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv637 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack)
        | ARROW ->
            _menhir_run124 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run122 _menhir_env (Obj.magic _menhir_stack)
        | DECR ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack)
        | DOT ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run113 _menhir_env (Obj.magic _menhir_stack)
        | INCR ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack)
        | COUT | ECOMM | ELSE | FALSE | FOR | IDENT _ | IF | INT _ | LBRACE | NEW | NOT | NULL | RBRACE | RETURN | SEMICOLON | THIS | TIDENT _ | TINT | TRUE | VOID | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv633 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, x), _, y), _, x0) = _menhir_stack in
            let _v : 'tv_instruction = let z =
              let x = x0 in
              
# 86 "/usr/share/menhir/standard.mly"
    ( x )
# 2944 "parser.ml"
              
            in
            
# 190 "parser.mly"
                                                 ( Var (x, y, z) )
# 2950 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv634)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv635 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv636)) : 'freshtv638)) : 'freshtv640)
    | MenhirState76 | MenhirState183 | MenhirState141 | MenhirState149 | MenhirState178 | MenhirState157 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv649 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv647 * _menhir_state * 'tv_expr) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack)
        | ARROW ->
            _menhir_run124 _menhir_env (Obj.magic _menhir_stack)
        | ASSIGN ->
            _menhir_run122 _menhir_env (Obj.magic _menhir_stack)
        | DECR ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack)
        | DOT ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run115 _menhir_env (Obj.magic _menhir_stack)
        | GEQ ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run113 _menhir_env (Obj.magic _menhir_stack)
        | INCR ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | LEQ ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv643 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _ = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv641 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_instruction = 
# 188 "parser.mly"
                       ( Expr x )
# 3015 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv642)) : 'freshtv644)
        | TIMES ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv645 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv646)) : 'freshtv648)) : 'freshtv650)
    | _ ->
        _menhir_fail ()

and _menhir_goto_var : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_var -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState73 | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv445 * _menhir_state) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv443 * _menhir_state) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, _) = _menhir_stack in
        let _v : 'tv_var = 
# 132 "parser.mly"
                ( EComm x )
# 3043 "parser.ml"
         in
        _menhir_goto_var _menhir_env _menhir_stack _menhir_s _v) : 'freshtv444)) : 'freshtv446)
    | MenhirState74 | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv449 * _menhir_state * 'tv_unary_times) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv447 * _menhir_state * 'tv_unary_times) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, x) = _menhir_stack in
        let _v : 'tv_var = 
# 131 "parser.mly"
                        ( Utimes x )
# 3055 "parser.ml"
         in
        _menhir_goto_var _menhir_env _menhir_stack _menhir_s _v) : 'freshtv448)) : 'freshtv450)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv467 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv465 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, y) = _menhir_stack in
        let _v : 'tv_argument = 
# 127 "parser.mly"
    ( (x, y) )
# 3067 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv463) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_argument) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv461 * _menhir_state * 'tv_argument) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv459 * _menhir_state * 'tv_argument) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv453 * _menhir_state * 'tv_argument) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv451 * _menhir_state * 'tv_argument) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | TIDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
            | TINT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | VOID ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20) : 'freshtv452)) : 'freshtv454)
        | LBRACE | RPAREN | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv455 * _menhir_state * 'tv_argument) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_argument_ = 
# 144 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 3107 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_argument_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv456)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv457 * _menhir_state * 'tv_argument) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv458)) : 'freshtv460)) : 'freshtv462)) : 'freshtv464)) : 'freshtv466)) : 'freshtv468)
    | MenhirState71 | MenhirState43 | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv479 * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv477 * _menhir_state * 'tv_var) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv471 * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv469 * _menhir_state * 'tv_var) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | ECOMM ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState43
            | IDENT _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
            | TIMES ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState43
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43) : 'freshtv470)) : 'freshtv472)
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv473 * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_var_ = 
# 144 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 3151 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_var_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv474)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv475 * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv476)) : 'freshtv478)) : 'freshtv480)
    | MenhirState165 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv501 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv499 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv493 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv491 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | DECR ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState167
            | ECOMM ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState167
            | FALSE ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState167
            | IDENT _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
            | INCR ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState167
            | INT _v ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
            | LPAREN ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState167
            | MINUS ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState167
            | NEW ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState167
            | NOT ->
                _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState167
            | NULL ->
                _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState167
            | PLUS ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState167
            | THIS ->
                _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState167
            | TIDENT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv489 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState167 in
                let (_v : (
# 11 "parser.mly"
       (string)
# 3211 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
                let _tok = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv487 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) * _menhir_state * (
# 11 "parser.mly"
       (string)
# 3219 "parser.ml"
                )) = _menhir_stack in
                let (_tok : token) = _tok in
                ((match _tok with
                | COLON ->
                    _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
                | LPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv483 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) * _menhir_state * (
# 11 "parser.mly"
       (string)
# 3230 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _tok = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv481 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) * _menhir_state * (
# 11 "parser.mly"
       (string)
# 3237 "parser.ml"
                    )) = _menhir_stack in
                    let (_tok : token) = _tok in
                    ((match _tok with
                    | DECR ->
                        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState169
                    | ECOMM ->
                        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState169
                    | FALSE ->
                        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState169
                    | IDENT _v ->
                        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
                    | INCR ->
                        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState169
                    | INT _v ->
                        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
                    | LPAREN ->
                        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState169
                    | MINUS ->
                        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState169
                    | NEW ->
                        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState169
                    | NOT ->
                        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState169
                    | NULL ->
                        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState169
                    | PLUS ->
                        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState169
                    | THIS ->
                        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState169
                    | TIDENT _v ->
                        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
                    | TIMES ->
                        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState169
                    | TRUE ->
                        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState169
                    | _ ->
                        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                        _menhir_env._menhir_shifted <- (-1);
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState169) : 'freshtv482)) : 'freshtv484)
                | _ ->
                    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                    _menhir_env._menhir_shifted <- (-1);
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv485 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) * _menhir_state * (
# 11 "parser.mly"
       (string)
# 3284 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv486)) : 'freshtv488)) : 'freshtv490)
            | TIMES ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState167
            | TRUE ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState167
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState167) : 'freshtv492)) : 'freshtv494)
        | COUT | DECR | ECOMM | ELSE | FALSE | FOR | IDENT _ | IF | INCR | INT _ | LBRACE | LPAREN | MINUS | NEW | NOT | NULL | PLUS | RBRACE | RETURN | SEMICOLON | THIS | TIDENT _ | TIMES | TINT | TRUE | VOID | WHILE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv495 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, x), _, y) = _menhir_stack in
            let _v : 'tv_instruction = 
# 189 "parser.mly"
                        ( Var (x, y, None) )
# 3303 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v) : 'freshtv496)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv497 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv498)) : 'freshtv500)) : 'freshtv502)
    | _ ->
        _menhir_fail ()

and _menhir_run76 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv441 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | COUT ->
        _menhir_run158 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | DECR ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | ECOMM ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | FALSE ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | FOR ->
        _menhir_run150 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | IDENT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | IF ->
        _menhir_run148 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | INCR ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | INT _v ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | LBRACE ->
        _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | LPAREN ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | MINUS ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | NEW ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | NOT ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | NULL ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | PLUS ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | RETURN ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | SEMICOLON ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | THIS ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | TIDENT _v ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | TIMES ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | TINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | TRUE ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | VOID ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | WHILE ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | RBRACE ->
        _menhir_reduce51 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76) : 'freshtv442)

and _menhir_goto_member : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_member -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv439 * _menhir_state * 'tv_member) = Obj.magic _menhir_stack in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv437 * _menhir_state * 'tv_member) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | TIDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | TINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | VIRTUAL ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | VOID ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | RBRACE ->
        _menhir_reduce53 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47) : 'freshtv438)) : 'freshtv440)

and _menhir_goto_decl : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_decl -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv435 * _menhir_state * 'tv_decl) = Obj.magic _menhir_stack in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv433 * _menhir_state * 'tv_decl) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | CLASS ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | TIDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
    | TINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | VOID ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | EOF ->
        _menhir_reduce49 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState190) : 'freshtv434)) : 'freshtv436)

and _menhir_run53 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 11 "parser.mly"
       (string)
# 3436 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv431 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 3444 "parser.ml"
    )) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | COLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv427 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 3453 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv425 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 3460 "parser.ml"
        )) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | IDENT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv421 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 3469 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_v : (
# 10 "parser.mly"
       (string)
# 3474 "parser.ml"
            )) = _v in
            ((let _ = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv419 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 3481 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (y : (
# 10 "parser.mly"
       (string)
# 3486 "parser.ml"
            )) = _v in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_qident = 
# 141 "parser.mly"
                                   ( Tident (x, y) )
# 3492 "parser.ml"
             in
            _menhir_goto_qident _menhir_env _menhir_stack _menhir_s _v) : 'freshtv420)) : 'freshtv422)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv423 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 3502 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv424)) : 'freshtv426)) : 'freshtv428)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv429 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 3513 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv430)) : 'freshtv432)

and _menhir_reduce84 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 10 "parser.mly"
       (string)
# 3521 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, x) = _menhir_stack in
    let _v : 'tv_qident = 
# 140 "parser.mly"
              ( Ident x )
# 3528 "parser.ml"
     in
    _menhir_goto_qident _menhir_env _menhir_stack _menhir_s _v

and _menhir_run79 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv417) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_expr = 
# 147 "parser.mly"
           ( True )
# 3541 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv418)

and _menhir_run80 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv415) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_expr = 
# 145 "parser.mly"
           ( This )
# 3554 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv416)

and _menhir_run81 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv413) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_unary_plus = 
# 108 "parser.mly"
         ()
# 3567 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv411) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_unary_plus) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv409 * _menhir_state * 'tv_unary_plus) = Obj.magic _menhir_stack in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv407 * _menhir_state * 'tv_unary_plus) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | DECR ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState95
    | ECOMM ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState95
    | FALSE ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState95
    | IDENT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | INCR ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState95
    | INT _v ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | LPAREN ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState95
    | MINUS ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState95
    | NEW ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState95
    | NOT ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState95
    | NULL ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState95
    | PLUS ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState95
    | THIS ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState95
    | TIDENT _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | TIMES ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState95
    | TRUE ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState95
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState95) : 'freshtv408)) : 'freshtv410)) : 'freshtv412)) : 'freshtv414)

and _menhir_run82 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv405) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_expr = 
# 148 "parser.mly"
           ( Null )
# 3628 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv406)

and _menhir_run83 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv403 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | DECR ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | ECOMM ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | FALSE ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | IDENT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | INCR ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | INT _v ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | LPAREN ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | MINUS ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | NEW ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | NOT ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | NULL ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | PLUS ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | THIS ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | TIDENT _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | TIMES ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | TRUE ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83) : 'freshtv404)

and _menhir_run84 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv401 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | TIDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv397 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 11 "parser.mly"
       (string)
# 3691 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv395 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 3699 "parser.ml"
        )) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv391 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 3708 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv389 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 3715 "parser.ml"
            )) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | DECR ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | ECOMM ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | FALSE ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | IDENT _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
            | INCR ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | INT _v ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
            | LPAREN ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | MINUS ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | NEW ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | NOT ->
                _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | NULL ->
                _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | PLUS ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | THIS ->
                _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | TIDENT _v ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
            | TIMES ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | TRUE ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | RPAREN ->
                _menhir_reduce57 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86) : 'freshtv390)) : 'freshtv392)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv393 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 3764 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv394)) : 'freshtv396)) : 'freshtv398)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv399 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv400)) : 'freshtv402)

and _menhir_run87 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv387) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_unary_minus = 
# 111 "parser.mly"
          ()
# 3785 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv385) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_unary_minus) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv383 * _menhir_state * 'tv_unary_minus) = Obj.magic _menhir_stack in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv381 * _menhir_state * 'tv_unary_minus) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | DECR ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | ECOMM ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | FALSE ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | IDENT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | INCR ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | INT _v ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | LPAREN ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | MINUS ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | NEW ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | NOT ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | NULL ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | PLUS ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | THIS ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | TIDENT _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | TIMES ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | TRUE ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96) : 'freshtv382)) : 'freshtv384)) : 'freshtv386)) : 'freshtv388)

and _menhir_run88 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv379 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | DECR ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | ECOMM ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | FALSE ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | IDENT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | INCR ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | INT _v ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | LPAREN ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | MINUS ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | NEW ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | NOT ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | NULL ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | PLUS ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | THIS ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | TIDENT _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | TIMES ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | TRUE ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88) : 'freshtv380)

and _menhir_run89 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 8 "parser.mly"
       (int)
# 3885 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv377) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (x : (
# 8 "parser.mly"
       (int)
# 3895 "parser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 144 "parser.mly"
            ( Int x )
# 3900 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv378)

and _menhir_run90 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv375 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | DECR ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | ECOMM ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | FALSE ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | IDENT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | INCR ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | INT _v ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | LPAREN ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | MINUS ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | NEW ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | NOT ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | NULL ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | PLUS ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | THIS ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | TIDENT _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | TIMES ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | TRUE ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90) : 'freshtv376)

and _menhir_run91 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv373) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_expr = 
# 146 "parser.mly"
            ( False )
# 3958 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv374)

and _menhir_run92 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv371 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | DECR ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | ECOMM ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | FALSE ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | IDENT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | INCR ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | INT _v ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | LPAREN ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | MINUS ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | NEW ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | NOT ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | NULL ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | PLUS ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | THIS ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | TIDENT _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | TIMES ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | TRUE ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92) : 'freshtv372)

and _menhir_run93 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv369 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | DECR ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | ECOMM ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | FALSE ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | IDENT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | INCR ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | INT _v ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | LPAREN ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | MINUS ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | NEW ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | NOT ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | NULL ->
        _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | PLUS ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | THIS ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | TIDENT _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | TIMES ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | TRUE ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93) : 'freshtv370)

and _menhir_reduce104 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 10 "parser.mly"
       (string)
# 4055 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, x) = _menhir_stack in
    let _v : 'tv_var = 
# 130 "parser.mly"
              ( Ident x )
# 4062 "parser.ml"
     in
    _menhir_goto_var _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_proto : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_proto -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv363 * _menhir_state * 'tv_boption_VIRTUAL_) * _menhir_state * 'tv_proto) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv361 * _menhir_state * 'tv_boption_VIRTUAL_) * _menhir_state * 'tv_proto) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv357 * _menhir_state * 'tv_boption_VIRTUAL_) * _menhir_state * 'tv_proto) = Obj.magic _menhir_stack in
            ((let _ = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv355 * _menhir_state * 'tv_boption_VIRTUAL_) * _menhir_state * 'tv_proto) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, x), _, y) = _menhir_stack in
            let _v : 'tv_member = 
# 80 "parser.mly"
        ( 
            (x, proto)
        )
# 4091 "parser.ml"
             in
            _menhir_goto_member _menhir_env _menhir_stack _menhir_s _v) : 'freshtv356)) : 'freshtv358)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv359 * _menhir_state * 'tv_boption_VIRTUAL_) * _menhir_state * 'tv_proto) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv360)) : 'freshtv362)) : 'freshtv364)
    | MenhirState190 | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv367 * _menhir_state * 'tv_proto) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv365 * _menhir_state * 'tv_proto) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | LBRACE ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75) : 'freshtv366)) : 'freshtv368)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_member_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_member_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv331 * _menhir_state * 'tv_member) * _menhir_state * 'tv_list_member_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv329 * _menhir_state * 'tv_member) * _menhir_state * 'tv_list_member_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, xs) = _menhir_stack in
        let _v : 'tv_list_member_ = 
# 116 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 4132 "parser.ml"
         in
        _menhir_goto_list_member_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv330)) : 'freshtv332)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv353 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 4140 "parser.ml"
        )) * 'tv_option_supers_) * _menhir_state * 'tv_list_member_) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv351 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 4148 "parser.ml"
        )) * 'tv_option_supers_) * _menhir_state * 'tv_list_member_) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv347 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 4157 "parser.ml"
            )) * 'tv_option_supers_) * _menhir_state * 'tv_list_member_) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv345 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 4164 "parser.ml"
            )) * 'tv_option_supers_) * _menhir_state * 'tv_list_member_) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | SEMICOLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv341 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 4173 "parser.ml"
                )) * 'tv_option_supers_) * _menhir_state * 'tv_list_member_) = Obj.magic _menhir_stack in
                ((let _ = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv339 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 4180 "parser.ml"
                )) * 'tv_option_supers_) * _menhir_state * 'tv_list_member_) = Obj.magic _menhir_stack in
                ((let ((((_menhir_stack, _menhir_s), x), y), _, z) = _menhir_stack in
                let _v : 'tv_decl_class = 
# 71 "parser.mly"
    ( (x, y, z) )
# 4186 "parser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv337) = _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_decl_class) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv335) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_decl_class) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv333) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (x : 'tv_decl_class) = _v in
                ((let _v : 'tv_decl = 
# 62 "parser.mly"
                   ( x )
# 4203 "parser.ml"
                 in
                _menhir_goto_decl _menhir_env _menhir_stack _menhir_s _v) : 'freshtv334)) : 'freshtv336)) : 'freshtv338)) : 'freshtv340)) : 'freshtv342)
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv343 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 4213 "parser.ml"
                )) * 'tv_option_supers_) * _menhir_state * 'tv_list_member_) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv344)) : 'freshtv346)) : 'freshtv348)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv349 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 4224 "parser.ml"
            )) * 'tv_option_supers_) * _menhir_state * 'tv_list_member_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv350)) : 'freshtv352)) : 'freshtv354)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_run72 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "parser.mly"
       (string)
# 4239 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv327 * _menhir_state * (
# 10 "parser.mly"
       (string)
# 4248 "parser.ml"
    )) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | COMMA | SEMICOLON ->
        _menhir_reduce104 _menhir_env (Obj.magic _menhir_stack)
    | LPAREN ->
        _menhir_reduce84 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv325 * _menhir_state * (
# 10 "parser.mly"
       (string)
# 4263 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv326)) : 'freshtv328)

and _menhir_run73 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv323 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | ECOMM ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | IDENT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | TIDENT _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | TIMES ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73) : 'freshtv324)

and _menhir_run52 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "parser.mly"
       (string)
# 4292 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv321 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 4301 "parser.ml"
    )) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | COLON ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv319 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 4314 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv320)) : 'freshtv322)

and _menhir_run56 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "parser.mly"
       (string)
# 4322 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _ = _menhir_discard _menhir_env in
    _menhir_reduce84 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run57 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv317 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | ECOMM ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | IDENT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | TIDENT _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | TIMES ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57) : 'freshtv318)

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv315) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_unary_times = 
# 114 "parser.mly"
          ()
# 4359 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv313) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_unary_times) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState165 | MenhirState41 | MenhirState43 | MenhirState9 | MenhirState14 | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv299 * _menhir_state * 'tv_unary_times) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv297 * _menhir_state * 'tv_unary_times) = _menhir_stack in
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14) : 'freshtv298)) : 'freshtv300)
    | MenhirState51 | MenhirState58 | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv303 * _menhir_state * 'tv_unary_times) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv301 * _menhir_state * 'tv_unary_times) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ECOMM ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | IDENT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
        | TIDENT _v ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58) : 'freshtv302)) : 'freshtv304)
    | MenhirState71 | MenhirState74 | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv307 * _menhir_state * 'tv_unary_times) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv305 * _menhir_state * 'tv_unary_times) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ECOMM ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | IDENT _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
        | TIDENT _v ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74) : 'freshtv306)) : 'freshtv308)
    | MenhirState183 | MenhirState76 | MenhirState141 | MenhirState178 | MenhirState149 | MenhirState167 | MenhirState169 | MenhirState157 | MenhirState159 | MenhirState155 | MenhirState153 | MenhirState151 | MenhirState144 | MenhirState78 | MenhirState83 | MenhirState86 | MenhirState88 | MenhirState90 | MenhirState92 | MenhirState127 | MenhirState122 | MenhirState120 | MenhirState106 | MenhirState96 | MenhirState95 | MenhirState94 | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv311 * _menhir_state * 'tv_unary_times) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv309 * _menhir_state * 'tv_unary_times) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | DECR ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | ECOMM ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | FALSE ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | IDENT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | INCR ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | INT _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | LPAREN ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | MINUS ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | NEW ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | NOT ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | NULL ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | PLUS ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | THIS ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | TIDENT _v ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | TRUE ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94) : 'freshtv310)) : 'freshtv312)
    | _ ->
        _menhir_fail ()) : 'freshtv314)) : 'freshtv316)

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "parser.mly"
       (string)
# 4479 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _ = _menhir_discard _menhir_env in
    _menhir_reduce104 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv295 * _menhir_state) = _menhir_stack in
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12) : 'freshtv296)

and _menhir_goto_loption_separated_nonempty_list_COMMA_argument__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_argument__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv279 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 4514 "parser.ml"
        )) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument__) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv277 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 4520 "parser.ml"
        )) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument__) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, xs0) = _menhir_stack in
        let _v : 'tv_proto = let y =
          let xs = xs0 in
          
# 135 "/usr/share/menhir/standard.mly"
    ( xs )
# 4528 "parser.ml"
          
        in
        
# 93 "parser.mly"
        (
            {
                ident = Type x;
                args = y;
            }
        )
# 4539 "parser.ml"
         in
        _menhir_goto_proto _menhir_env _menhir_stack _menhir_s _v) : 'freshtv278)) : 'freshtv280)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv283 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 4547 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 4551 "parser.ml"
        )) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument__) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv281 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 4557 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 4561 "parser.ml"
        )) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument__) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, x), y), _, xs0) = _menhir_stack in
        let _v : 'tv_proto = let z =
          let xs = xs0 in
          
# 135 "/usr/share/menhir/standard.mly"
    ( xs )
# 4569 "parser.ml"
          
        in
        
# 100 "parser.mly"
        (
            {
                ident = Herit (x, y);
                args = z;
            }
        )
# 4580 "parser.ml"
         in
        _menhir_goto_proto _menhir_env _menhir_stack _menhir_s _v) : 'freshtv282)) : 'freshtv284)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv293 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_qvar) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument__) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv291 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_qvar) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument__) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv287 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_qvar) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument__) = Obj.magic _menhir_stack in
            ((let _ = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv285 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_qvar) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument__) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, x), _, y), _, xs0) = _menhir_stack in
            let _v : 'tv_proto = let z =
              let xs = xs0 in
              
# 135 "/usr/share/menhir/standard.mly"
    ( xs )
# 4604 "parser.ml"
              
            in
            
# 86 "parser.mly"
        (
            { 
                ident = Qvar (x, y);
                args = z;
            }
        )
# 4615 "parser.ml"
             in
            _menhir_goto_proto _menhir_env _menhir_stack _menhir_s _v) : 'freshtv286)) : 'freshtv288)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv289 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_qvar) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_argument__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv290)) : 'freshtv292)) : 'freshtv294)
    | _ ->
        _menhir_fail ()

and _menhir_reduce53 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_member_ = 
# 114 "/usr/share/menhir/standard.mly"
    ( [] )
# 4633 "parser.ml"
     in
    _menhir_goto_list_member_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv275) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_boption_VIRTUAL_ = 
# 50 "/usr/share/menhir/standard.mly"
    ( true )
# 4646 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv273) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_boption_VIRTUAL_) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv271 * _menhir_state * 'tv_boption_VIRTUAL_) = Obj.magic _menhir_stack in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv269 * _menhir_state * 'tv_boption_VIRTUAL_) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | TIDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | TINT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | VOID ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50) : 'freshtv270)) : 'freshtv272)) : 'freshtv274)) : 'freshtv276)

and _menhir_goto_separated_nonempty_list_COMMA_preceded_PUBLIC_TIDENT__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_preceded_PUBLIC_TIDENT__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv257 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 4680 "parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_preceded_PUBLIC_TIDENT__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv255 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 4688 "parser.ml"
        )) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_separated_nonempty_list_COMMA_preceded_PUBLIC_TIDENT__) = _v in
        ((let ((_menhir_stack, _menhir_s), x0) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_preceded_PUBLIC_TIDENT__ = let x =
          let x = x0 in
          
# 86 "/usr/share/menhir/standard.mly"
    ( x )
# 4698 "parser.ml"
          
        in
        
# 146 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 4704 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_preceded_PUBLIC_TIDENT__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv256)) : 'freshtv258)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv267) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_preceded_PUBLIC_TIDENT__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv265) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (x : 'tv_separated_nonempty_list_COMMA_preceded_PUBLIC_TIDENT__) = _v in
        ((let _v : 'tv_supers = 
# 75 "parser.mly"
    ( Some x )
# 4719 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv263) = _menhir_stack in
        let (_v : 'tv_supers) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv261) = Obj.magic _menhir_stack in
        let (_v : 'tv_supers) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv259) = Obj.magic _menhir_stack in
        let (x : 'tv_supers) = _v in
        ((let _v : 'tv_option_supers_ = 
# 31 "/usr/share/menhir/standard.mly"
    ( Some x )
# 4733 "parser.ml"
         in
        _menhir_goto_option_supers_ _menhir_env _menhir_stack _v) : 'freshtv260)) : 'freshtv262)) : 'freshtv264)) : 'freshtv266)) : 'freshtv268)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_decl_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_decl_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv249 * 'tv_boption_INCLUDE_) * _menhir_state * 'tv_list_decl_) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv247 * 'tv_boption_INCLUDE_) * _menhir_state * 'tv_list_decl_) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv243 * 'tv_boption_INCLUDE_) * _menhir_state * 'tv_list_decl_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv241 * 'tv_boption_INCLUDE_) * _menhir_state * 'tv_list_decl_) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, x), _, main) = _menhir_stack in
            let _v : (
# 47 "parser.mly"
      (Ast.program)
# 4761 "parser.ml"
            ) = 
# 53 "parser.mly"
    (
        {
            includes = x;
            program = main;
        }
    )
# 4770 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv239) = _menhir_stack in
            let (_v : (
# 47 "parser.mly"
      (Ast.program)
# 4777 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv237) = Obj.magic _menhir_stack in
            let (_v : (
# 47 "parser.mly"
      (Ast.program)
# 4784 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv235) = Obj.magic _menhir_stack in
            let (_1 : (
# 47 "parser.mly"
      (Ast.program)
# 4791 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv236)) : 'freshtv238)) : 'freshtv240)) : 'freshtv242)) : 'freshtv244)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv245 * 'tv_boption_INCLUDE_) * _menhir_state * 'tv_list_decl_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv246)) : 'freshtv248)) : 'freshtv250)
    | MenhirState190 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv253 * _menhir_state * 'tv_decl) * _menhir_state * 'tv_list_decl_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv251 * _menhir_state * 'tv_decl) * _menhir_state * 'tv_list_decl_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, xs) = _menhir_stack in
        let _v : 'tv_list_decl_ = 
# 116 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 4810 "parser.ml"
         in
        _menhir_goto_list_decl_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv252)) : 'freshtv254)
    | _ ->
        _menhir_fail ()

and _menhir_goto_type_rule : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_type_rule -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState63 | MenhirState25 | MenhirState20 | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv217 * _menhir_state * 'tv_type_rule) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv215 * _menhir_state * 'tv_type_rule) = _menhir_stack in
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9) : 'freshtv216)) : 'freshtv218)
    | MenhirState47 | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv221 * _menhir_state * 'tv_type_rule) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv219 * _menhir_state * 'tv_type_rule) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ECOMM ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | IDENT _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41) : 'freshtv220)) : 'freshtv222)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv225 * _menhir_state * 'tv_type_rule) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv223 * _menhir_state * 'tv_type_rule) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ECOMM ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | IDENT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
        | TIDENT _v ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51) : 'freshtv224)) : 'freshtv226)
    | MenhirState190 | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv229 * _menhir_state * 'tv_type_rule) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv227 * _menhir_state * 'tv_type_rule) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ECOMM ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | IDENT _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
        | TIDENT _v ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71) : 'freshtv228)) : 'freshtv230)
    | MenhirState183 | MenhirState76 | MenhirState141 | MenhirState178 | MenhirState149 | MenhirState157 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv233 * _menhir_state * 'tv_type_rule) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv231 * _menhir_state * 'tv_type_rule) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ECOMM ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState165
        | IDENT _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState165 _v
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState165
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState165) : 'freshtv232)) : 'freshtv234)
    | _ ->
        _menhir_fail ()

and _menhir_reduce100 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 11 "parser.mly"
       (string)
# 4925 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, x) = _menhir_stack in
    let _v : 'tv_type_rule = 
# 123 "parser.mly"
               ( x )
# 4932 "parser.ml"
     in
    _menhir_goto_type_rule _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce55 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_argument__ = 
# 57 "/usr/share/menhir/standard.mly"
    ( [] )
# 4941 "parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_argument__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "parser.mly"
       (string)
# 4948 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _ = _menhir_discard _menhir_env in
    _menhir_reduce100 _menhir_env (Obj.magic _menhir_stack)

and _menhir_goto_option_supers_ : _menhir_env -> 'ttv_tail -> 'tv_option_supers_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv213 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 4962 "parser.ml"
    )) * 'tv_option_supers_) = Obj.magic _menhir_stack in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv211 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 4970 "parser.ml"
    )) * 'tv_option_supers_) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | LBRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv207 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 4979 "parser.ml"
        )) * 'tv_option_supers_) = Obj.magic _menhir_stack in
        ((let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv205 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 4986 "parser.ml"
        )) * 'tv_option_supers_) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | PUBLIC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv201 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 4995 "parser.ml"
            )) * 'tv_option_supers_) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv199 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 5002 "parser.ml"
            )) * 'tv_option_supers_) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | COLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv195 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 5011 "parser.ml"
                )) * 'tv_option_supers_) = Obj.magic _menhir_stack in
                ((let _tok = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv193 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 5018 "parser.ml"
                )) * 'tv_option_supers_) = _menhir_stack in
                let (_tok : token) = _tok in
                ((match _tok with
                | TIDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
                | TINT ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState39
                | VIRTUAL ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState39
                | VOID ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState39
                | RBRACE ->
                    _menhir_reduce53 _menhir_env (Obj.magic _menhir_stack) MenhirState39
                | _ ->
                    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                    _menhir_env._menhir_shifted <- (-1);
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39) : 'freshtv194)) : 'freshtv196)
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv197 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 5043 "parser.ml"
                )) * 'tv_option_supers_) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)) : 'freshtv200)) : 'freshtv202)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv203 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 5054 "parser.ml"
            )) * 'tv_option_supers_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)) : 'freshtv206)) : 'freshtv208)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv209 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 5065 "parser.ml"
        )) * 'tv_option_supers_) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)) : 'freshtv212)) : 'freshtv214)

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv191 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | TIDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv187 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 11 "parser.mly"
       (string)
# 5084 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv185 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 5092 "parser.ml"
        )) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv179 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 5101 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv177 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 5108 "parser.ml"
            )) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | PUBLIC ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState32
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32) : 'freshtv178)) : 'freshtv180)
        | LBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv181 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 5123 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), x0) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_preceded_PUBLIC_TIDENT__ = let x =
              let x = x0 in
              
# 86 "/usr/share/menhir/standard.mly"
    ( x )
# 5131 "parser.ml"
              
            in
            
# 144 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 5137 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_preceded_PUBLIC_TIDENT__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv182)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv183 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 5147 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)) : 'freshtv186)) : 'freshtv188)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv189 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)) : 'freshtv192)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState190 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv67 * _menhir_state * 'tv_decl) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState183 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv69 * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState178 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv71 * _menhir_state) * _menhir_state * 'tv_paren) * _menhir_state * 'tv_instruction) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState169 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv73 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) * _menhir_state * (
# 11 "parser.mly"
       (string)
# 5182 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState167 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState165 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv77 * _menhir_state * 'tv_type_rule) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState161 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state) * _menhir_state * 'tv_expr_str) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState159 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv81 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState158 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv83 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState157 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv85 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) * _menhir_state * 'tv_option_expr_) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState155 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv87 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) * _menhir_state * 'tv_option_expr_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState153 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv89 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState149 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state) * _menhir_state * 'tv_paren) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState148 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState144 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv97 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv99 * _menhir_state) * _menhir_state * 'tv_paren) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv101 * _menhir_state * 'tv_expr) * 'tv_operateur) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv105 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109 * _menhir_state * 'tv_unary_minus) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state * 'tv_unary_plus) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113 * _menhir_state * 'tv_unary_times) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv123 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 5311 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv129 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv131 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state * 'tv_proto) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135 * _menhir_state * 'tv_unary_times) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * _menhir_state * 'tv_type_rule) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv141 * _menhir_state * 'tv_type_rule) * _menhir_state * 'tv_qvar) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv143 * _menhir_state * 'tv_unary_times) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv145 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv147 * _menhir_state * 'tv_type_rule) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149 * _menhir_state * 'tv_boption_VIRTUAL_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151 * _menhir_state * 'tv_member) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv153 * _menhir_state * 'tv_var) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv155 * _menhir_state * 'tv_type_rule) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv157 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 5400 "parser.ml"
        )) * 'tv_option_supers_) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv159 * _menhir_state) * (
# 11 "parser.mly"
       (string)
# 5409 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv161) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv162)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv163 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 5422 "parser.ml"
        )) * (
# 11 "parser.mly"
       (string)
# 5426 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv165 * _menhir_state * 'tv_argument) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv167 * _menhir_state * 'tv_unary_times) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv169 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv171 * _menhir_state * 'tv_type_rule) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv173 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 5455 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv175 * 'tv_boption_INCLUDE_) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv176)

and _menhir_reduce49 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_decl_ = 
# 114 "/usr/share/menhir/standard.mly"
    ( [] )
# 5469 "parser.ml"
     in
    _menhir_goto_list_decl_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv65) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_type_rule = 
# 121 "parser.mly"
           ( Void )
# 5482 "parser.ml"
     in
    _menhir_goto_type_rule _menhir_env _menhir_stack _menhir_s _v) : 'freshtv66)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv63) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_type_rule = 
# 122 "parser.mly"
           ( Int )
# 5495 "parser.ml"
     in
    _menhir_goto_type_rule _menhir_env _menhir_stack _menhir_s _v) : 'freshtv64)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "parser.mly"
       (string)
# 5502 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv61 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 5511 "parser.ml"
    )) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | COLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 5520 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv51 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 5527 "parser.ml"
        )) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv47 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 5536 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv45 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 5543 "parser.ml"
            )) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | TIDENT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv41 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 5552 "parser.ml"
                )) = Obj.magic _menhir_stack in
                let (_v : (
# 11 "parser.mly"
       (string)
# 5557 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _tok = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv39 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 5565 "parser.ml"
                )) * (
# 11 "parser.mly"
       (string)
# 5569 "parser.ml"
                )) = _menhir_stack in
                let (_tok : token) = _tok in
                ((match _tok with
                | LPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ('freshtv35 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 5578 "parser.ml"
                    )) * (
# 11 "parser.mly"
       (string)
# 5582 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _tok = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ('freshtv33 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 5589 "parser.ml"
                    )) * (
# 11 "parser.mly"
       (string)
# 5593 "parser.ml"
                    )) = _menhir_stack in
                    let (_tok : token) = _tok in
                    ((match _tok with
                    | TIDENT _v ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
                    | TINT ->
                        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState25
                    | VOID ->
                        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState25
                    | LBRACE | SEMICOLON ->
                        _menhir_reduce55 _menhir_env (Obj.magic _menhir_stack) MenhirState25
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
# 5616 "parser.ml"
                    )) * (
# 11 "parser.mly"
       (string)
# 5620 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)) : 'freshtv40)) : 'freshtv42)
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv43 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 5631 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)) : 'freshtv46)) : 'freshtv48)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv49 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 5642 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)) : 'freshtv52)) : 'freshtv54)
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv57 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 5651 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv55 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 5658 "parser.ml"
        )) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | TIDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
        | TINT ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState7
        | VOID ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState7
        | LBRACE | SEMICOLON ->
            _menhir_reduce55 _menhir_env (Obj.magic _menhir_stack) MenhirState7
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7) : 'freshtv56)) : 'freshtv58)
    | ECOMM | IDENT _ | TIDENT _ | TIMES ->
        _menhir_reduce100 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv59 * _menhir_state * (
# 11 "parser.mly"
       (string)
# 5683 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)) : 'freshtv62)

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
# 5702 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv25 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 5710 "parser.ml"
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
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29) : 'freshtv18)) : 'freshtv20)
        | LBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv21) = Obj.magic _menhir_stack in
            ((let _v : 'tv_option_supers_ = 
# 29 "/usr/share/menhir/standard.mly"
    ( None )
# 5734 "parser.ml"
             in
            _menhir_goto_option_supers_ _menhir_env _menhir_stack _v) : 'freshtv22)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv23 * _menhir_state) * (
# 10 "parser.mly"
       (string)
# 5744 "parser.ml"
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
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState3
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
# 5797 "parser.ml"
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
# 5830 "parser.ml"
         in
        _menhir_goto_boption_INCLUDE_ _menhir_env _menhir_stack _v) : 'freshtv2)) : 'freshtv4)
    | CLASS | EOF | TIDENT _ | TINT | VOID ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
        ((let _v : 'tv_boption_INCLUDE_ = 
# 48 "/usr/share/menhir/standard.mly"
    ( false )
# 5839 "parser.ml"
         in
        _menhir_goto_boption_INCLUDE_ _menhir_env _menhir_stack _v) : 'freshtv6)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv8)) : 'freshtv10)) : 'freshtv12))




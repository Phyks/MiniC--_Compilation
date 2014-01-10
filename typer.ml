(* Typage pour MiniC++ *)
open Ast
open Ast_typing

exception Error of string*Lexing.position

type field_offset = int
type in_class = False | InClass of string
type decl_fonction_record = { ident_decl: at_ident; args_decl: ((at_var * at_ast_type) * bool) list; this: bool}
type function_matches = FunctionFalse | FunctionMatches of decl_fonction_record

let includes = ref false
let is_main_here = ref false

let globals = Hashtbl.create 17
let decl_class = Hashtbl.create 17
let decl_fonction = Hashtbl.create 17
let glob_objects = Hashtbl.create 17
let refs = Hashtbl.create 17
let constructors = Hashtbl.create 17
let current_function = ref ""
let current_object= ref ""
let nb_decl_function = ref 0


let is_left_value = function
    | EQident _ -> true
    | UOp (UTimes, _) -> true
    | Dot (EQident _, _) -> true
    | Dot (UOp (UTimes, EQident _), _) -> true
    | Dot (UOp (UTimes, EThis), _) -> true
    | Apply (EQident (Ident id), _) when Hashtbl.mem refs (ATVIdent id) -> true
    | _ -> false


let types_ast_to_atast = function
    | Void -> ATVoid
    | Int -> ATInt
    | ASTTident y -> ATClass y

let op_ast_to_atast = function
    | Eq -> ATEq
    | Neq -> ATNeq
    | Lt -> ATLt
    | Leq -> ATLeq
    | Gt -> ATGt
    | Geq -> ATGeq
    | Plus -> ATPlus
    | Minus -> ATMinus
    | Times -> ATTimes
    | Div -> ATDiv
    | Mod -> ATMod
    | And -> ATAnd
    | Or -> ATOr

let uop_ast_to_atast = function
    | EComm -> ATEComm
    | Not -> ATNot
    | UMinus -> ATUMinus
    | UPlus -> ATUPlus
    | UTimes -> ATUTimes

let type_qident = function
    | Ident x -> ATIdent x
    | Tident (tid, id) -> ATTident (tid, id)

let max_hashtbl k d x = match snd d with
    | (Pos p, size) -> if p < fst x then x else p, size
    | (Global_var_ref _, _) -> x
    | (Arg_ref p, size) -> if p < fst x then x else p, size

let stack_length htbl =
    let tmp = (Hashtbl.fold max_hashtbl) htbl (0, 0) in
    (fst tmp) + (snd tmp)

let max_hashtbl_int k d x = match snd d with
    | (p, size) -> if p < fst x then x else p, size

let stack_length_int htbl =
    let tmp = (Hashtbl.fold max_hashtbl_int) htbl (0, 0) in
    (fst tmp) + (snd tmp)

let size_from_type = function
    | Int | Void -> 4
    | ASTTident x ->
            let fields = Hashtbl.find decl_class x in
            stack_length_int fields.fields

let size_from_attype = function
    | ATNull | ATInt | ATVoid -> 4
    | ATPointer _ -> 4
    | ATClass x ->
            let fields = Hashtbl.find decl_class x in
            stack_length_int fields.fields

let rec type_var pos locals heap type_for_var determine_size = function
    | VIdent ident -> 
        if Hashtbl.mem locals (ATVIdent ident) then
            raise (Error ("redeclaration of "^ident, pos));

        let var_pos = if not heap then
            let tmp = (Hashtbl.fold max_hashtbl) locals (0, 0) in
            (fst tmp) + (snd tmp)
            else
                -1
            in
        let tmp_type = types_ast_to_atast type_for_var in
        begin try
            Hashtbl.add locals (ATVIdent ident) (tmp_type, (Pos var_pos, if determine_size then size_from_type type_for_var else 4));
        with Not_found -> raise (Error ("Undefined type for variable "^ident^".", pos));
        end;

        ATVIdent ident, tmp_type;
    | VUTimes ((VIdent ident) as var) ->
            let new_var = type_var pos locals false type_for_var false var in
            let tmp_type = types_ast_to_atast type_for_var in

            let old_binding = Hashtbl.find locals (ATVIdent ident) in
            Hashtbl.remove locals (ATVIdent ident);
            Hashtbl.add locals (ATVIdent ident) (ATPointer (fst old_binding), snd old_binding);

            ATVUTimes (fst new_var), ATPointer tmp_type
    | VUTimes _ -> raise (Error ("double pointer not allowed", pos))
    | VEComm ((VIdent ident) as var) ->
            let new_var = type_var pos locals false type_for_var true var in
            let tmp_type = types_ast_to_atast type_for_var in

            Hashtbl.add refs (ATVIdent ident) ();

            ATVEComm (fst new_var), tmp_type
    | VEComm _ -> raise (Error ("double reference not allowed", pos))

let type_qvar = function
    | Qident x -> ATQident (type_qident x)
    | QEComm (Qident x) -> ATQEComm (ATQident (type_qident x))
    | _ -> assert false
    (* TODO *)

let type_incr = function
    | IncrL -> ATIncrL
    | IncrR -> ATIncrR
    | DecrL -> ATDecrL
    | DecrR -> ATDecrR

let num = function
    | ATInt -> true
    | ATNull | ATPointer _ -> true
    | _ -> false

let compatible_types t1 t2 =
    if t1 = t2 then true
    else begin
        match t1, t2 with
        | ((ATPointer _ | ATNull), (ATPointer _ | ATNull)) -> true
        | _ -> false
    end

let rec subtype t1 t2 = match t1 with
    | ATVoid -> false
    | ATInt -> if t2 = ATInt then true else false
    | ATClass _ -> if t2 = t1 then true else false (* TODO : pas d'héritage *)
    | ATNull -> begin
        match t2 with
        | ATPointer _ -> true
        | _ -> false
    end
    | ATPointer tprime1 -> begin
        match t2 with
        | ATPointer tprime2 ->
                subtype tprime1 tprime2
        | _ -> false
    end

let rec type_expr pos locals objects = function
    | EInt n -> ATEInt n, ATInt
    | Assign (e1, e2) when is_left_value e1 ->
            let tmp1 = type_expr pos locals objects e1 in
            let tmp2 = type_expr pos locals objects e2 in

            if num (snd tmp1) then
                if subtype (snd tmp2) (snd tmp1) then
                    ATAssign (fst tmp1, fst tmp2), snd tmp1
                else
                    raise (Error ("Type of the right operand must be a subtype of the type of the left operand.", pos))
            else
                raise (Error ("Left operand must be either an int or a pointer", pos))
    | Assign (e1, e2) -> raise (Error ("Valeur gauche attendue.", pos))
    | Op ((Eq | Neq) as op, e1, e2) ->
            let tmp1 = type_expr pos locals objects e1 in
            let tmp2 = type_expr pos locals objects e2 in

            if compatible_types (snd tmp1) (snd tmp2) then
                if num (snd tmp1) then
                    ATOp (op_ast_to_atast op, fst tmp1, fst tmp2), ATInt
                else
                    raise (Error ("Type of the operands must be either an int or a pointer.", pos))
            else
                raise (Error ("Left and right operands must have the same type.", pos))
    | Op (op, e1, e2) ->
            let tmp1 = type_expr pos locals objects e1 in
            let tmp2 = type_expr pos locals objects e2 in

            if snd tmp1 = ATInt && snd tmp2 = ATInt then
                ATOp (op_ast_to_atast op, fst tmp1, fst tmp2), ATInt
            else
                raise (Error ("Left and right operands must be int.", pos))
    | UOp ((UMinus | UPlus | Not) as uop, e) ->
            let tmp = type_expr pos locals objects e in

            if snd tmp = ATInt then
                ATUOp (uop_ast_to_atast uop, fst tmp), ATInt
            else
                raise (Error ("Operand must be int.", pos))
    | UOp (UTimes, e) -> begin
            let tmp = type_expr pos locals objects e in

            match snd tmp with
            | ATPointer t -> ATUOp (ATUTimes, fst tmp), t
            | _ -> raise (Error ("Not a valid pointer to dereference.", pos))
    end
    | UOp (EComm, e) -> begin
            let tmp = type_expr pos locals objects e in

            match fst tmp with
            | ATEQident _ -> ATUOp (ATEComm, fst tmp), ATPointer (snd tmp)
            | _ -> raise (Error ("Invalid ampersand.", pos))
    end
    | EQident qident -> begin
        match qident with
        | Ident ident ->
                if Hashtbl.mem locals (ATVIdent ident) then
                    ATEQident (ATIdent ident, true), fst(Hashtbl.find locals (ATVIdent ident))
                else
                    if Hashtbl.mem globals (ATVIdent ident) then
                        ATEQident (ATIdent ident, false), Hashtbl.find globals (ATVIdent ident)
                    else
                        raise (Error ("Unbound variable "^ident, pos))
        | Tident (tid1, tid2) -> assert false (* TODO *)
    end
    | Incr (incr, expr) when is_left_value expr ->
            let tmp = type_expr pos locals objects expr in

            if snd tmp = ATInt then
                ATIncr (type_incr incr, fst tmp), ATInt
            else
                raise (Error ("Operand must be int.", pos))
    | Incr (incr, expr) -> raise (Error ("Valeur gauche attendue.", pos))
    | ENull -> ATEInt 0, ATNull
    | Apply (e, le) -> begin
        let tmp = type_expr pos locals objects e in
        match fst tmp with
        | ATEQident (ATIdent id, _) ->
            if not (Hashtbl.mem globals (ATVIdent id)) then begin
                raise (Error ("Undefined function "^id^".", pos))
            end;

            let decl_fonction_list = Hashtbl.find decl_fonction id in
            let i = ref (-1) in

            let test_function_match stop test_function =
                match stop with
                | FunctionFalse ->
                    let correct_argument continue2 a b =
                        if continue2 then begin
                            let tmp = type_expr pos locals objects a in

                            if compatible_types (snd tmp) (snd (fst b)) then
                                true
                            else
                                false
                        end
                        else
                            false
                    in

                    begin
                        try
                            if List.fold_left2 correct_argument true le test_function.args_decl then
                                FunctionMatches test_function
                            else
                                FunctionFalse
                        with
                        | Invalid_argument _ -> FunctionFalse
                    end;
                | FunctionMatches _ as f -> f
            in

            let decl_fonction_tmp = match List.fold_left test_function_match FunctionFalse decl_fonction_list with
                | FunctionMatches f -> f
                | FunctionFalse -> raise (Error ("Wrong arguments in function call.", pos))
            in

            let type_expr_ref x =
                i:=!i+1;
                let tmp = type_expr pos locals objects x in
                if snd(List.nth decl_fonction_tmp.args_decl !i) then
                    ATUOp (ATEComm, fst tmp), true
                else
                    fst tmp, false
            in

            let length = List.fold_left (fun x y -> x + size_from_attype (snd (fst y))) 0 decl_fonction_tmp.args_decl in

            ATApply (decl_fonction_tmp.ident_decl, List.map (type_expr_ref) le, length, decl_fonction_tmp.this), snd tmp
        | _ -> raise (Error ("Expression cannot be used as a function.", pos))
    end
    | Dot (e, id) -> begin
        let tmp = type_expr pos locals objects e in
        begin match snd tmp with
            | ATClass _ -> ();
            | _ -> raise (Error ("Left operand must be a class name.", pos));
        end;

        match fst tmp with
        | ATEQident (ATIdent ident, _) as qident ->
                let decl_class = Hashtbl.find objects (ATVIdent ident) in
                
                if Hashtbl.mem decl_class.fields (ATVIdent id) then
                    ATDot (qident, id), fst (Hashtbl.find decl_class.fields (ATVIdent id))
                else begin
                    if Hashtbl.mem decl_class.methods id then
                        ATDot (qident, id), (*snd (snd (Hashtbl.find decl_class.methods id))*) ATInt
                    else
                        raise (Error ("No field "^id^" in object "^decl_class.name, pos))
                end
        | ATUOp(ATUTimes, ATEQident _) -> assert false (* TODO *)
        | ATUOp(ATUTimes, ATEThis object_id) ->
                let decl_class = Hashtbl.find decl_class object_id in

                if Hashtbl.mem decl_class.fields (ATVIdent id) then
                    ATDot (ATUOp (ATUTimes, ATEThis object_id), id), fst (Hashtbl.find decl_class.fields (ATVIdent id))
                else
                    raise (Error ("No field "^id^" in object "^decl_class.name, pos))
        | _ -> raise (Error ("Not an instance of a class.", pos))
    end
    | Instance (tid, le) ->
            if not(Hashtbl.mem decl_class tid) then
                raise (Error ("Class "^tid^" undefined.", pos));

            ATInstance (tid, List.map (fun x -> fst (type_expr pos locals objects x)) le, size_from_type (ASTTident tid)), ATPointer (ATClass tid)
    | EThis ->
            if Hashtbl.mem locals (ATVIdent "_this") then
                ATEThis !current_object, ATPointer (ATClass !current_object)
            else
                raise (Error ("This keyword outside of a class.", pos))

let type_expr_string pos locals objects = function
    | String s -> ATString s
    | Expr e -> let tmp = type_expr pos locals objects e in if snd tmp = ATInt then ATExpr (fst tmp) else raise (Error ("Argument of std::cout must be either a string or an int", pos))

let rec type_instruction locals objects x = match x.instruction_content with
    | Nop -> ATNop
    | Cout expr ->
            if !includes then
                ATCout (List.map (type_expr_string (fst x.instruction_loc) locals objects) expr)
            else
                raise (Error ("iostream not included.", (fst x.instruction_loc)))
    | IExpr expr ->
            let tmp = type_expr (fst x.instruction_loc) locals objects expr in
            ATIExpr (fst tmp)
    | Return some_expr -> begin
        let type_current_function = Hashtbl.find globals (ATVIdent !current_function) in
        match some_expr with
            | None -> if type_current_function = ATVoid then ATReturn (None, if !current_function = "main" then "main" else "_"^(!current_function)^(string_of_int !nb_decl_function)) else raise (Error ("Returned value doesn't match with function type.", fst x.instruction_loc))
            | Some expr ->
                    let tmp = type_expr (fst x.instruction_loc) locals objects expr in
                    
                    if compatible_types (snd tmp) type_current_function then
                        if Hashtbl.mem refs (ATVIdent !current_function) then
                            match expr with
                            | EQident _ -> ATReturn (Some (fst tmp), if !current_function = "main" then "main" else "_"^(!current_function)^(string_of_int !nb_decl_function))
                            | _ -> raise (Error ("Returned value doesn't match with function type..", fst x.instruction_loc))
                        else
                            ATReturn (Some (fst tmp), if !current_function = "main" then "main" else "_"^(!current_function)^(string_of_int !nb_decl_function))
                    else
                        raise (Error ("Returned value doesn't match with function type..", fst x.instruction_loc))
    end
    | IVar (ast_type, ident, assign) -> begin
        match ast_type with
            | ASTTident tident -> begin
                let new_ident = type_var (fst x.instruction_loc) locals false ast_type true ident in

                let use_constructor = match new_ident with
                    | ATVIdent _, _ -> true
                    | _ -> false
                in

                if Hashtbl.mem constructors tident then begin
                    (* Vérifier qu'il existe bien un constructeur sans argument *)
                    let constructors_decl = Hashtbl.find decl_fonction tident in
                    if not(List.fold_left (fun x y -> if x then true else begin if List.length y.args_decl = 0 then true else false end) false constructors_decl) then
                        raise (Error ("No matching constructors without arguments for class instance.", fst x.instruction_loc))
                end;

                let decl_class = Hashtbl.find decl_class tident in
                Hashtbl.add objects (fst new_ident) decl_class;

                match assign with
                | NoAssign ->
                        ATTVar (fst new_ident, ATNoAssign, if use_constructor then Hashtbl.mem constructors tident else false)
                | SAExpr ((Instance _) as expr) ->
                        let type_for_expr = type_expr (fst x.instruction_loc) locals objects expr in

                        if compatible_types (snd type_for_expr) (snd new_ident) then
                            ATTVar (fst new_ident, ATSAExpr (fst type_for_expr), if use_constructor then Hashtbl.mem constructors tident else false)
                        else
                            raise (Error ("Object initialization with incompatible type.", fst x.instruction_loc))
                | _ -> assert false (* TODO *)
            end
            | Int ->begin
                let new_ident = type_var (fst x.instruction_loc) locals false ast_type true ident in

                match fst new_ident with
                | ATVIdent _ | ATVUTimes _ -> begin
                    match assign with
                    | NoAssign -> ATIVar (fst new_ident, ATNoAssign)
                    | SAExpr e -> ATIVar (fst new_ident, ATSAExpr (fst(type_expr (fst x.instruction_loc) locals objects e)))
                    | SATident (ident, expr_list) -> raise(Error ("Cannot convert right type to left type in initialization.", fst x.instruction_loc))
                end
                | ATVEComm ((ATVIdent ident) as var) -> begin
                    match assign with
                    | NoAssign -> raise (Error ("Reference declared but not initialized.", (fst x.instruction_loc)))
                    | SAExpr (EQident (Ident eident)) -> begin
                            try
                                let other_ident = Hashtbl.find locals (ATVIdent eident) in
                                Hashtbl.add locals (ATVIdent ident) other_ident;
                                
                                ATIVar(var, ATSAExpr (ATEQident((ATIdent eident), true)))
                            with Not_found -> begin
                                try
                                    Hashtbl.add locals (ATVIdent ident) (Hashtbl.find globals (ATVIdent eident), (Global_var_ref eident, 0));

                                    ATIVar(var, ATSAExpr (ATEQident((ATIdent eident), false)))
                                with Not_found ->
                                    raise (Error ("Unbound variable "^eident, fst x.instruction_loc))
                            end
                        end
                    | SAExpr (Apply (EQident (Ident id), _) as apply) when Hashtbl.mem refs (ATVIdent id) -> ATIVar(var, ATSAExpr (fst (type_expr (fst x.instruction_loc) locals objects apply)))
                    | SATident _ | SAExpr _ -> raise (Error ("Invalid reference initialization.", (fst x.instruction_loc)))
                    end
                | _ -> assert false (* TODO *)
            end
            | Void -> raise (Error ("Variable declared void.", fst x.instruction_loc));
        end
    | If (e, instr) ->
            let if_locals = Hashtbl.copy locals in
            let if_objects = Hashtbl.copy objects in
            let tmp = type_expr (fst x.instruction_loc) if_locals if_objects e in

            if snd tmp = ATInt then
                ATIfElse (fst tmp, type_instruction if_locals if_objects instr, ATNop, if_locals, if_objects, (stack_length if_locals) - (stack_length locals))
            else
                raise (Error ("Condition in if must be int.", fst x.instruction_loc))
    | IfElse (e, instr1, instr2)  ->
            let if_locals = Hashtbl.copy locals in
            let if_objects = Hashtbl.copy objects in

            let tmp = type_expr (fst x.instruction_loc) if_locals if_objects e in
            if snd tmp = ATInt then
                ATIfElse (fst tmp, type_instruction if_locals if_objects instr1, type_instruction if_locals if_objects instr2, if_locals, if_objects, (stack_length if_locals) - (stack_length locals))
            else
                raise (Error ("Condition in if must be int.", fst x.instruction_loc))
    | IBloc bloc ->
            let bloc_locals = Hashtbl.copy locals in
            let bloc_objects = Hashtbl.copy objects in
            let tmp = type_bloc bloc_locals bloc_objects bloc in
            ATIBloc (tmp, bloc_locals, bloc_objects, (stack_length bloc_locals) - (stack_length locals))
    | While (e, instr) ->
            let while_locals = Hashtbl.copy locals in
            let while_objects = Hashtbl.copy objects in

            let tmp = type_expr (fst x.instruction_loc) while_locals while_objects e in
            if snd tmp = ATInt then
                ATWhile (fst tmp, type_instruction while_locals while_objects instr, while_locals, while_objects, (stack_length while_locals) - (stack_length locals))
            else
                raise (Error ("Loop condition in while must be int.", fst x.instruction_loc))
    | For (e1, se2, e3, i) ->
            let for_locals = Hashtbl.copy locals in
            let for_objects = Hashtbl.copy objects in
            let some_expr2 = 
                match se2 with
                | None -> ATEInt 1
                | Some expr -> let tmp = type_expr (fst x.instruction_loc) for_locals for_objects expr in if snd tmp = ATInt then fst tmp else raise (Error ("Loop condition in for must be int", (fst x.instruction_loc)))
            in

            let expr1 = List.map (fun a -> fst(type_expr (fst x.instruction_loc) for_locals for_objects a)) e1 in
            let expr3 = List.map (fun a -> fst(type_expr (fst x.instruction_loc) for_locals for_objects a)) e3 in

            let instr = type_instruction for_locals for_objects i in

            ATFor(expr1, some_expr2, expr3, instr, for_locals, for_objects, (stack_length for_locals) - (stack_length locals))

and type_bloc locals objects x =
    let bloc_content = match x.bloc_content with
    | Bloc_content y -> y
    in

    List.map (type_instruction locals objects) bloc_content

let type_proto_ident = function
    | Qvar (x, y) ->
            nb_decl_function := !nb_decl_function + 1;
            ATQvar (types_ast_to_atast x, type_qvar y)
    | Type tid ->
            nb_decl_function := !nb_decl_function + 1;
            ATType tid
    | Herit (tid, id) ->
            ATHerit (tid, id)

let type_args pos args x =
    let tmp = type_var pos args false (fst x) true (snd x) in

    let reference = match fst tmp with
    | ATVEComm id -> begin
        match snd (Hashtbl.find args id) with
        | (Pos p, size) -> Hashtbl.remove args id; Hashtbl.add args id (snd tmp, (Arg_ref p, size)); true
        | _ -> true
        end
    | _ -> false
    in

    tmp, reference

let type_proto args x in_class virtualbool =
    let tmp_args = match x.ident with
    | Herit (_, _) -> x.args @ [(Void, VIdent "_this")]
    | _ ->  x.args
    in
    
    let typed_args = List.map (type_args (fst x.proto_loc) args) tmp_args  in

    let () = 
        match x.ident with
        | Qvar (a, b) when a = Int && b = Qident (Ident "main") ->
                current_function := "main";

                if in_class = False then begin
                    if Hashtbl.mem globals (ATVIdent "main") then
                        raise (Error ("Redeclaration of function main().", fst x.proto_loc));

                    Hashtbl.add globals (ATVIdent "main") (ATInt);
                    if List.length x.args = 0 then
                        if not !is_main_here then
                            is_main_here := true
                        else
                            raise (Error ("Redeclaration of main function.", fst x.proto_loc))
                end
                else
                    (); (* TODO *)
        | Qvar (a, qid) -> 
                let rec find_ident = function
                    | Qident (Ident ident) -> ident
                    | Qident (Tident (tid, id)) -> id
                    | QUTimes var -> find_ident var
                    | QEComm var -> let tmp = find_ident var in Hashtbl.add refs (ATVIdent tmp) (); tmp
                in
                let id = find_ident qid in

                current_function := id;

                if in_class = False then begin
                    if Hashtbl.mem globals (ATVIdent id) then begin
                        (* Vérifier qu'elle a le même type et des arguments différents *)
                        let old_type = Hashtbl.find globals (ATVIdent id) in
                        if old_type = (types_ast_to_atast a) then begin
                            let old_decls = Hashtbl.find decl_fonction id in
                            let old_args = List.map (fun x -> x.args_decl) old_decls in

                            let check_duplicate x =
                                (* x est une liste d'arguments, on cherche si x == typed_args *)
                                let check_duplicate_arg x =
                                    let ast_type = snd (fst x) in
                                    let reference = snd x in

                                    List.exists (fun y -> snd (fst y) = ast_type && snd y = reference && false) typed_args;
                                in
                                if not(List.length x = List.length typed_args) then
                                    false
                                else
                                    List.for_all check_duplicate_arg x
                            in
                            if List.exists check_duplicate old_args then
                                raise (Error ("Redeclaration of function "^id^"().", fst x.proto_loc));
                        end
                        else
                            raise (Error ("Redeclaration of function "^id^"().", fst x.proto_loc));
                    end;

                    Hashtbl.add globals (ATVIdent id) (types_ast_to_atast a);
                end
                else
                    ();  (* TODO *)
        | Type tid -> begin
                match in_class with
                | False -> raise (Error ("Constructor is out a class.", fst x.proto_loc))
                | InClass id -> if not(tid = id) then raise (Error ("Bad constructor for class "^id^".", fst x.proto_loc))
                end;
                current_function := tid;
        | Herit (tid, id) ->
                let declaration_class = Hashtbl.find decl_class tid in
                let declaration_function = Hashtbl.find decl_fonction id in

                if tid = id then begin (* Constructeur *)
                    current_function := tid;
                    if not(Hashtbl.mem declaration_class.methods (List.hd declaration_function).ident_decl) then
                        let decl = Hashtbl.find declaration_class.methods (List.hd declaration_function).ident_decl in
                        if not(snd (snd decl) = ATType (List.hd declaration_function).ident_decl) then
                            raise (Error ("Undeclared constructor "^id^".", fst x.proto_loc));
                end
                else begin
                    assert false;
                end

    in

    if !current_function = "main" then begin
        Hashtbl.add decl_fonction !current_function ({ ident_decl = !current_function; args_decl = typed_args; this = false; } :: []);

        {
            at_ident_proto = type_proto_ident x.ident;
            at_args = List.map fst typed_args;
        }
    end
    else begin
        let tmp_new_proto_ident = type_proto_ident x.ident in
        let rec change_ident = function
            | ATQident (ATIdent id) -> "_"^id^(string_of_int !nb_decl_function) (* Commence l'ident par _ pour avoir un ident invalide au sens de MiniC++ et éviter un conflit avec une autre fonction *)
            | ATQident (ATTident (tid, id)) -> "_"^tid^"_"^id^(string_of_int !nb_decl_function)
            | ATQUTimes var -> change_ident var
            | ATQEComm var -> change_ident var
        in
        let new_ident_tmp = match tmp_new_proto_ident with
        | ATType tid -> "_"^tid^(string_of_int !nb_decl_function)
        | ATQvar (x,y) -> change_ident y
        | ATHerit (tid, id) ->
                let declaration_function = Hashtbl.find decl_fonction id in

                if tid = id then begin (* Constructeur *)
                    (List.hd declaration_function).ident_decl
                end
                else begin
                    assert false;
                end
        in
        let new_ident = match in_class with
        | False -> new_ident_tmp
        | InClass tid -> "_"^tid^"_"^new_ident_tmp
        in
        let rec change_qvar_ident = function
            | ATQident (ATIdent id) -> ATQident (ATIdent new_ident)
            | ATQident (ATTident (tid, id)) -> ATQident (ATTident (tid, new_ident))
            | ATQUTimes var -> ATQUTimes (change_qvar_ident var)
            | ATQEComm var -> ATQEComm (change_qvar_ident var)
        in
        let new_proto_ident = match tmp_new_proto_ident with
        | ATType tid -> Hashtbl.add constructors tid ("function_"^new_ident); ATType new_ident
        | ATQvar (x, y) -> ATQvar (x, change_qvar_ident y)
        | ATHerit (tid, id) -> ATHerit (tid, new_ident)
        in

        let this_bool = match tmp_new_proto_ident with
        | ATHerit (_, _) -> true
        | _ -> false
        in

        (* Sauve la déclaration dans une table pour pouvoir vérifier que l'appel est bon *)
        if Hashtbl.mem decl_fonction !current_function then begin
            let tmp = Hashtbl.find decl_fonction !current_function in
            Hashtbl.replace decl_fonction !current_function ({ ident_decl = new_ident; args_decl = typed_args; this = this_bool } :: tmp);
        end
        else
            Hashtbl.add decl_fonction !current_function ({ ident_decl = new_ident; args_decl = typed_args; this = this_bool } :: []);

        {
            at_ident_proto = new_proto_ident;
            at_args = List.map fst typed_args;
        }
    end

let type_fonction x =
    let locals = Hashtbl.create 17 in
    let objects = Hashtbl.copy glob_objects in
    (* Ajoute un identifiant (invalide = pas de conflits) pour tenir compte du décalage lié à la sauvegarde de fp et ra *)
    Hashtbl.add locals (ATVIdent "_fp") (ATVoid, (Pos 0, 4));
    Hashtbl.add locals (ATVIdent "_ra") (ATVoid, (Pos 4, 4));

    let args = Hashtbl.create 17 in
    let type_for_proto = type_proto args (fst x.fonction_content) False false in
    let args_to_locals a b =
        match snd b with
        | (Pos p, size) -> Hashtbl.add locals a (fst b, (Pos (-p-4), size))
        | (Arg_ref p, size) -> Hashtbl.add locals a (fst b, (Arg_ref (-p-4), size))
        | _ -> assert false
    in
    Hashtbl.iter args_to_locals args;

    let type_for_bloc = type_bloc locals objects (snd x.fonction_content) in

    let frame_size =
        let compute_sl k d x =
            if Hashtbl.mem args k then
                x
            else
                x+(snd (snd d))
        in
        Hashtbl.fold compute_sl locals 0
    in

    {
        at_proto = type_for_proto; 
        at_bloc = type_for_bloc;
        at_locals = locals;
        at_objects = objects;
        at_frame_size = frame_size;
    }

let type_member tid pos = function
    | MVar var -> 
            let map_type_member x =
                let tmp = type_var pos (Hashtbl.create 17) false (fst var.decl_vars_content) true x in
                if fst var.decl_vars_content = ASTTident tid then
                    match fst tmp with
                    | ATVIdent _ -> raise (Error ("Error this field has incomplete type.", pos))
                    | ATVUTimes _ | ATVEComm _ -> tmp
                else
                    tmp
            in
            ATMVar (List.map (map_type_member) (snd var.decl_vars_content))
    | Proto (virtual_bool, proto) -> ATProto (virtual_bool, type_proto (Hashtbl.create 17) proto (InClass tid) virtual_bool)

let type_class x = begin
    match x.decl_class_content with
        | ident, supers, members ->
            current_object := ident;
            let ast_typing_class = {
                at_ident_class = ident;
                at_supers = None;
                at_member = List.map (fun y -> type_member ident (fst x.decl_class_loc) y) members;
            }
            in

            let fields = Hashtbl.create 17 in
            let methods = Hashtbl.create 17 in
            let form_members_hashtbl = function
                | ATMVar var -> List.iter (fun x -> Hashtbl.add fields (fst x) (snd x, (stack_length_int fields, size_from_attype (snd x)))) var;
                | ATProto (virtuel, proto) -> 
                        begin match proto.at_ident_proto with
                        | ATQvar (_, ATQident (ATIdent ident)) -> Hashtbl.add methods ident (virtuel, (proto.at_args, proto.at_ident_proto));
                        | ATHerit (_, ident) -> Hashtbl.add methods ident (virtuel, (proto.at_args, proto.at_ident_proto));
                        | ATType tident -> Hashtbl.add methods tident (virtuel, (proto.at_args, proto.at_ident_proto));
                        | _ -> assert false (* TODO *)
                        (* Table de méthode virtuelle ? TODO *)
                        end;
            in
            let _ = List.iter form_members_hashtbl ast_typing_class.at_member in

            Hashtbl.add decl_class ident {name = ident; fields = fields; methods = methods};
            ast_typing_class
    end
    (* TODO *)

let type_decl = function
    | DVar x ->
            let pos = fst x.decl_vars_loc in

            let fold_globals a b =
                let typed_var = type_var pos (Hashtbl.create 17) true (fst x.decl_vars_content) true b in
                let rec get_ident = function
                    | ATVIdent ident -> ATVIdent ident
                    | ATVUTimes var -> get_ident var
                    | ATVEComm var -> assert false (* TODO *)
                in

                let tmp = get_ident (fst typed_var) in
                if Hashtbl.mem globals tmp then begin
                    match tmp with
                    | ATVIdent id -> raise (Error ("Redeclaration of "^id^".", pos));
                    | _ -> assert false; (* Never happens *)
                end;

                begin match (fst x.decl_vars_content) with
                    | ASTTident tid -> Hashtbl.add glob_objects tmp (Hashtbl.find decl_class tid);
                    | _ -> ();
                end;

                Hashtbl.add globals tmp (snd typed_var)
            in

            if fst x.decl_vars_content = Void then
                raise (Error ("Global variable declared void.", pos));

            List.fold_left fold_globals () (snd x.decl_vars_content);

            AT_DVar (List.map (type_var pos (Hashtbl.create 17) false (fst x.decl_vars_content) true) (snd x.decl_vars_content))

    | Class x -> AT_Class (type_class x)
    | Fonction x -> AT_Fonction (type_fonction x)

let rec type_ast p = 
    if p.includes then includes := true;

    let return = List.map type_decl p.program in

    if not !is_main_here then
        raise (Error("No \"int main()\" function present", fst p.program_loc))
    else
        return

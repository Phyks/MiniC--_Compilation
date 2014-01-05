(* Typage pour MiniC++ *)
open Ast
open Ast_typing

exception Error of string*Lexing.position

type field_offset = int
type in_class = False | InClass of string
type class_fields = { name: at_ident; fields: (at_var, (at_ast_type * field_offset)) Hashtbl.t }
type decl_fonction_record = { ident_decl: at_ident; args_decl: ((at_var * at_ast_type) * bool) list}
type function_matches = FunctionFalse | FunctionMatches of decl_fonction_record

let includes = ref false
let is_main_here = ref false

let globals = Hashtbl.create 17
let decl_class = Hashtbl.create 17
let decl_fonction = Hashtbl.create 17
let objects = Hashtbl.create 17
let refs = Hashtbl.create 17
let current_function = ref ""
let nb_decl_function = ref 0


let is_left_value = function
    | EQident _ -> true
    | UOp (UTimes, _) -> true
    | Dot (EQident _, _) -> true
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
    | _ -> assert false
    (* TODO *)

let max_hashtbl k d x = match snd d with
    | Pos p -> if p < x then x else p
    | Global_var_ref _ -> x
    | Arg_ref p -> if p < x then x else p

let rec type_var pos locals heap type_for_var = function
    | VIdent ident -> 
        if Hashtbl.mem locals (ATVIdent ident) then
            raise (Error ("redeclaration of "^ident, pos));

        let pos = if not heap then
                ((Hashtbl.fold max_hashtbl) locals 0) + 4
            else
                -1
            in
        let tmp_type = types_ast_to_atast type_for_var in
        Hashtbl.add locals (ATVIdent ident) (tmp_type, Pos pos);

        ATVIdent ident, tmp_type;
    | VUTimes ((VIdent ident) as var) ->
            let new_var = type_var pos locals false type_for_var var in
            let tmp_type = types_ast_to_atast type_for_var in

            let old_binding = Hashtbl.find locals (ATVIdent ident) in
            Hashtbl.remove locals (ATVIdent ident);
            Hashtbl.add locals (ATVIdent ident) (ATPointer (fst old_binding), snd old_binding);

            ATVUTimes (fst new_var), ATPointer tmp_type
    | VUTimes _ -> raise (Error ("double pointer not allowed", pos))
    | VEComm ((VIdent ident) as var) ->
            let new_var = type_var pos locals false type_for_var var in
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

let rec type_expr pos locals = function
    | EInt n -> ATEInt n, ATInt
    | Assign (e1, e2) when is_left_value e1 ->
            let tmp1 = type_expr pos locals e1 in
            let tmp2 = type_expr pos locals e2 in

            if num (snd tmp1) then
                if subtype (snd tmp2) (snd tmp1) then
                    ATAssign (fst tmp1, fst tmp2), snd tmp1
                else
                    raise (Error ("Type of the right operand must be a subtype of the type of the left operand.", pos))
            else
                raise (Error ("Left operand must be either an int or a pointer", pos))
    | Assign (e1, e2) -> raise (Error ("Valeur gauche attendue.", pos))
    | Op ((Eq | Neq) as op, e1, e2) ->
            let tmp1 = type_expr pos locals e1 in
            let tmp2 = type_expr pos locals e2 in

            if compatible_types (snd tmp1) (snd tmp2) then
                if num (snd tmp1) then
                    ATOp (op_ast_to_atast op, fst tmp1, fst tmp2), ATInt
                else
                    raise (Error ("Type of the operands must be either an int or a pointer.", pos))
            else
                raise (Error ("Left and right operands must have the same type.", pos))
    | Op (op, e1, e2) ->
            let tmp1 = type_expr pos locals e1 in
            let tmp2 = type_expr pos locals e2 in

            if snd tmp1 = ATInt && snd tmp2 = ATInt then
                ATOp (op_ast_to_atast op, fst tmp1, fst tmp2), ATInt
            else
                raise (Error ("Left and right operands must be int.", pos))
    | UOp ((UMinus | UPlus | Not) as uop, e) ->
            let tmp = type_expr pos locals e in

            if snd tmp = ATInt then
                ATUOp (uop_ast_to_atast uop, fst tmp), ATInt
            else
                raise (Error ("Operand must be int.", pos))
    | UOp (UTimes, e) -> begin
            let tmp = type_expr pos locals e in

            match snd tmp with
            | ATPointer t -> ATUOp (ATUTimes, fst tmp), t
            | _ -> raise (Error ("Not a valid pointer to dereference.", pos))
    end
    | UOp (EComm, e) -> begin
            let tmp = type_expr pos locals e in

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
            let tmp = type_expr pos locals expr in

            if snd tmp = ATInt then
                ATIncr (type_incr incr, fst tmp), ATInt
            else
                raise (Error ("Operand must be int.", pos))
    | Incr (incr, expr) -> raise (Error ("Valeur gauche attendue.", pos))
    | ENull -> ATEInt 0, ATNull
    | Apply (e, le) -> begin
        let tmp = type_expr pos locals e in
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
                            let tmp = type_expr pos locals a in

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
                let tmp = type_expr pos locals x in
                if snd(List.nth decl_fonction_tmp.args_decl !i) then
                    ATUOp (ATEComm, fst tmp), true
                else
                    fst tmp, false
            in
            ATApply (decl_fonction_tmp.ident_decl, List.map (type_expr_ref) le), snd tmp
        | _ -> raise (Error ("Expression cannot be used as a function.", pos))
    end
    | Dot (e, id) -> begin
        let tmp = type_expr pos locals e in
        begin match snd tmp with
            | ATClass _ -> ();
            | _ -> raise (Error ("Left operand must be a class name.", pos));
        end;

        match fst tmp with
        | ATEQident (ATIdent ident, _) as qident ->
                let decl_class = Hashtbl.find objects (ATVIdent ident) in
                
                if Hashtbl.mem decl_class.fields (ATVIdent id) then
                    ATDot (qident, id), fst (Hashtbl.find decl_class.fields (ATVIdent id))
                else
                    raise (Error ("No field "^id^" in object "^decl_class.name, pos))
        | _ -> raise (Error ("Not an instance of a class.", pos))
    end
    | Instance _ -> assert false (* TODO *)
    | EThis -> assert false (* TODO *)

let type_expr_string pos locals = function
    | String s -> ATString s
    | Expr e -> let tmp = type_expr pos locals e in if snd tmp = ATInt then ATExpr (fst tmp) else raise (Error ("Argument of std::cout must be either a string or an int", pos))

let rec type_instruction locals x = match x.instruction_content with
    | Nop -> ATNop
    | Cout expr ->
            if !includes then
                ATCout (List.map (type_expr_string (fst x.instruction_loc) locals) expr)
            else
                raise (Error ("iostream not included.", (fst x.instruction_loc)))
    | IExpr expr ->
            let tmp = type_expr (fst x.instruction_loc) locals expr in
            ATIExpr (fst tmp)
    | Return some_expr -> begin
        let type_current_function = Hashtbl.find globals (ATVIdent !current_function) in
        match some_expr with
            | None -> if type_current_function = ATVoid then ATReturn (None, if !current_function = "main" then "main" else (!current_function)^(string_of_int !nb_decl_function)) else raise (Error ("Returned value doesn't match with function type.", fst x.instruction_loc))
            | Some expr ->
                    let tmp = type_expr (fst x.instruction_loc) locals expr in
                    
                    if compatible_types (snd tmp) type_current_function then
                        if Hashtbl.mem refs (ATVIdent !current_function) then
                            match expr with
                            | EQident _ -> ATReturn (Some (fst tmp), if !current_function = "main" then "main" else (!current_function)^(string_of_int !nb_decl_function))
                            | _ -> raise (Error ("Returned value doesn't match with function type..", fst x.instruction_loc))
                        else
                            ATReturn (Some (fst tmp), if !current_function = "main" then "main" else (!current_function)^(string_of_int !nb_decl_function))
                    else
                        raise (Error ("Returned value doesn't match with function type..", fst x.instruction_loc))
    end
    | IVar (ast_type, ident, assign) -> begin
        match ast_type with
            | ASTTident tident -> begin
                let new_ident = type_var (fst x.instruction_loc) locals true ast_type ident in

                match assign with
                | NoAssign ->
                        let decl_class = Hashtbl.find decl_class tident in
                        Hashtbl.add objects (fst new_ident) decl_class;
                        ATTVar (fst new_ident, ATNoAssign)
                | _ -> assert false (* TODO *)
            end
            | Int ->begin
                let new_ident = type_var (fst x.instruction_loc) locals false ast_type ident in

                match fst new_ident with
                | ATVIdent _ | ATVUTimes _ -> begin
                    match assign with
                    | NoAssign -> ATIVar (fst new_ident, ATNoAssign)
                    | SAExpr e -> ATIVar (fst new_ident, ATSAExpr (fst(type_expr (fst x.instruction_loc) locals e)))
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
                                    Hashtbl.add locals (ATVIdent ident) (Hashtbl.find globals (ATVIdent eident), Global_var_ref eident);

                                    ATIVar(var, ATSAExpr (ATEQident((ATIdent eident), false)))
                                with Not_found ->
                                    raise (Error ("Unbound variable "^eident, fst x.instruction_loc))
                            end
                        end
                    | SAExpr (Apply (EQident (Ident id), _) as apply) when Hashtbl.mem refs (ATVIdent id) -> ATIVar(var, ATSAExpr (fst (type_expr (fst x.instruction_loc) locals apply)))
                    | SATident _ | SAExpr _ -> raise (Error ("Invalid reference initialization.", (fst x.instruction_loc)))
                    end
                | _ -> assert false (* TODO *)
            end
            | Void -> raise (Error ("Variable declared void.", fst x.instruction_loc));
        end
    | If (e, instr) ->
            let if_locals = Hashtbl.copy locals in
            let tmp = type_expr (fst x.instruction_loc) if_locals e in

            if snd tmp = ATInt then
                ATIfElse (fst tmp, type_instruction if_locals instr, ATNop, if_locals, 4*(Hashtbl.length if_locals) - 4*(Hashtbl.length locals))
            else
                raise (Error ("Condition in if must be int.", fst x.instruction_loc))
    | IfElse (e, instr1, instr2)  ->
            let if_locals = Hashtbl.copy locals in

            let tmp = type_expr (fst x.instruction_loc) if_locals e in
            if snd tmp = ATInt then
                ATIfElse (fst tmp, type_instruction if_locals instr1, type_instruction if_locals instr2, if_locals, 4*(Hashtbl.length if_locals) - 4*(Hashtbl.length locals))
            else
                raise (Error ("Condition in if must be int.", fst x.instruction_loc))
    | IBloc bloc ->
            let bloc_locals = Hashtbl.copy locals in
            let tmp = type_bloc bloc_locals bloc in
            ATIBloc (tmp, bloc_locals, 4*(Hashtbl.length bloc_locals) - 4*(Hashtbl.length locals))
    | While (e, instr) ->
            let while_locals = Hashtbl.copy locals in

            let tmp = type_expr (fst x.instruction_loc) while_locals e in
            if snd tmp = ATInt then
                ATWhile (fst tmp, type_instruction while_locals instr, while_locals, 4*(Hashtbl.length while_locals) - 4*(Hashtbl.length locals))
            else
                raise (Error ("Loop condition in while must be int.", fst x.instruction_loc))
    | For (e1, se2, e3, i) ->
            let for_locals = Hashtbl.copy locals in
            let some_expr2 = 
                match se2 with
                | None -> ATEInt 1
                | Some expr -> let tmp = type_expr (fst x.instruction_loc) for_locals expr in if snd tmp = ATInt then fst tmp else raise (Error ("Loop condition in for must be int", (fst x.instruction_loc)))
            in

            let expr1 = List.map (fun a -> fst(type_expr (fst x.instruction_loc) for_locals a)) e1 in
            let expr3 = List.map (fun a -> fst(type_expr (fst x.instruction_loc) for_locals a)) e3 in

            let instr = type_instruction for_locals i in

            ATFor(expr1, some_expr2, expr3, instr, for_locals, 4*(Hashtbl.length for_locals) - 4*(Hashtbl.length locals))

and type_bloc locals x =
    let bloc_content = match x.bloc_content with
    | Bloc_content y -> y
    in

    List.map (type_instruction locals) bloc_content

let type_proto_ident = function
    | Qvar (x, y) ->
            nb_decl_function := !nb_decl_function + 1;
            ATQvar (types_ast_to_atast x, type_qvar y)
    | Type tid ->
            nb_decl_function := !nb_decl_function + 1;
            ATType tid
    | _ -> assert false
    (* TODO *)

let type_args pos args x =
    let tmp = type_var pos args false (fst x) (snd x) in

    let reference = match fst tmp with
    | ATVEComm id -> begin
        match snd (Hashtbl.find args id) with
        | Pos p -> Hashtbl.remove args id; Hashtbl.add args id (snd tmp, Arg_ref p); true
        | _ -> true
        end
    | _ -> false
    in

    tmp, reference

let type_proto args x in_class virtualbool =
    let typed_args = List.map (type_args (fst x.proto_loc) args) x.args in
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
                    | Qident _ -> assert false
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
                                if List.length x != List.length typed_args then
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
                | InClass id -> if tid != id then raise (Error ("Bad constructor for class "^id^".", fst x.proto_loc))
                end
        | _ -> assert false;
    in

    if !current_function = "main" then begin
        Hashtbl.add decl_fonction !current_function ({ ident_decl = !current_function; args_decl = typed_args } :: []);

        {
            at_ident_proto = type_proto_ident x.ident;
            at_args = List.map fst typed_args;
        }
    end
    else begin
        let tmp_new_proto_ident = type_proto_ident x.ident in
        let rec change_ident = function
            | ATQident (ATIdent id) -> id^(string_of_int !nb_decl_function)
            | ATQident _ -> assert false
            | ATQUTimes var -> change_ident var
            | ATQEComm var -> change_ident var
        in
        let new_ident = match tmp_new_proto_ident with
        | ATType tid -> assert false; (* TODO *)
        | ATQvar (x,y) -> change_ident y
        | _ -> assert false (* TODO *)
        in
        let rec change_qvar_ident = function
            | ATQident (ATIdent id) -> ATQident (ATIdent new_ident)
            | ATQident _ -> assert false
            | ATQUTimes var -> ATQUTimes (change_qvar_ident var)
            | ATQEComm var -> ATQEComm (change_qvar_ident var)
        in
        let new_proto_ident = match tmp_new_proto_ident with
        | ATType tid -> assert false; (* TODO *)
        | ATQvar (x, y) -> ATQvar (x, change_qvar_ident y)
        | _ -> assert false (* TODO *)
        in

        (* Sauve la déclaration dans une table pour pouvoir vérifier que l'appel est bon *)
        if Hashtbl.mem decl_fonction !current_function then
            let tmp = Hashtbl.find decl_fonction !current_function in
            Hashtbl.replace decl_fonction !current_function ({ ident_decl = new_ident; args_decl = typed_args } :: tmp);
        else
            Hashtbl.add decl_fonction !current_function ({ ident_decl = new_ident; args_decl = typed_args } :: []);

        {
            at_ident_proto = new_proto_ident;
            at_args = List.map fst typed_args;
        }
    end

let type_fonction x =
    let locals = Hashtbl.create 17 in
    (* Ajoute un identifiant (invalide = pas de conflits) pour tenir compte du décalage lié à la sauvegarde de fp et ra *)
    Hashtbl.add locals (ATVIdent "_") (ATVoid, Pos 4);

    let args = Hashtbl.create 17 in
    let type_for_proto = type_proto args (fst x.fonction_content) False false in
    let args_to_locals a b =
        match snd b with
        | Pos p -> Hashtbl.add locals a (fst b, Pos (-p))
        | Arg_ref p -> Hashtbl.add locals a (fst b, Arg_ref (-p))
        | _ -> assert false
    in
    Hashtbl.iter args_to_locals args;

    let type_for_bloc = type_bloc locals (snd x.fonction_content) in

    {
        at_proto = type_for_proto; 
        at_bloc = type_for_bloc;
        at_locals = locals;
        at_frame_size = 4*(Hashtbl.length locals) - 4*(Hashtbl.length args);
    }

let type_member tid pos = function
    | MVar var -> 
            let map_type_member x =
                let tmp = type_var pos (Hashtbl.create 17) false (fst var.decl_vars_content) x in
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
            let ast_typing_class = {
                at_ident_class = ident;
                at_supers = None;
                at_member = List.map (type_member ident (fst x.decl_class_loc)) members;
            }
            in

            let fields = Hashtbl.create 17 in
            let form_members_hashtbl = function
                | ATMVar var -> List.iter (fun x -> Hashtbl.add fields (fst x) (snd x, 4 * Hashtbl.length fields)) var;
                | ATProto (virtuel, proto) -> ();
                        (* Table de méthode virtuelle ? TODO *)
            in
            let _ = List.iter form_members_hashtbl ast_typing_class.at_member in

            Hashtbl.add decl_class ident {name = ident; fields = fields;};
            ast_typing_class
    end
    (* TODO *)

let type_decl = function
    | DVar x ->
            let pos = fst x.decl_vars_loc in

            let fold_globals a b =
                let typed_var = type_var pos (Hashtbl.create 17) false (fst x.decl_vars_content) b in
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

                Hashtbl.add globals tmp (snd typed_var)
            in

            if fst x.decl_vars_content = Void then
                raise (Error ("Global variable declared void.", pos));

            List.fold_left fold_globals () (snd x.decl_vars_content);

            AT_DVar (List.map (type_var pos (Hashtbl.create 17) false (fst x.decl_vars_content)) (snd x.decl_vars_content))

    | Class x -> AT_Class (type_class x)
    | Fonction x -> AT_Fonction (type_fonction x)

let rec type_ast p = 
    if p.includes then includes := true;

    let return = List.map type_decl p.program in

    if not !is_main_here then
        raise (Error("No \"int main()\" function present", fst p.program_loc))
    else
        return

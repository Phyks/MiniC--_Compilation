(* Production de code *)

open Mips

let mips_fonction f =
    let content = f.fonction_content in

let mips_decl x y = match x with
    | AT_Fonction f ->
            let generated_mips = mips_fonction f in
            {
                text = generated_mips.text ++ y.text;
                data = generated_mips.data ++ y.data;
            }
    | _ -> assert false
    (* TODO *)

let program x = 
    let mips = List.fold_left mips_decl x.program in
    mips

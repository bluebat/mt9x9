#!/usr/bin/ocaml
(* 9x9 multiplication table in OCaml *)
(* CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018. *)
(* ocaml mt9x9.ml || chmod +x mt9x9.ml ; ./mt9x9.ml *)

let () =
    let fmt = Printf.printf "%dx%d=%2d" in
    for i = 1 to 3 do
        for j = 1 to 9 do
            for k = i*3-2 to i*3 do
                fmt k j (k*j);
                print_string "\t"; 
            done;
            print_newline()
        done;
        print_newline()
    done;

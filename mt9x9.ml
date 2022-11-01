(*
9x9 multiplication table in Caml
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
*)
(* ocamlc mt9x9.ml && ./mt9x9 || ocaml mt9x9.ml *)

for i = 1 to 3 do
    for j = 1 to 9 do
        for k = i*3-2 to i*3 do
            Printf.printf "%dx%d=%2d\t" k j (k*j)
        done;
        print_string "\n"
    done;
    print_newline()
done;

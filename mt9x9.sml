(*
9x9 multiplication table in Standard ML
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2020.
*)
(* mlton mt9x9.sml && ./mt9x9 *)

val i = ref 1;
val j = ref 1;
val k = ref 1;
while (!i <= 7) do (
    j := 1;
    while (!j <= 9) do (
        k := !i;
        while (!k <= (!i + 2)) do (
            print (Int.toString (!k) ^ "x" ^ Int.toString (!j) ^ "=");
            print (if (!k * !j) < 10 then " " else "");
            print (Int.toString (!k * !j) ^ "\t");
            k := !k + 1
        );
        print "\n";
        j := !j + 1
    );
    print "\n";
    i := !i + 3
);

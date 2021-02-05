(*
9x9 multiplication table in F#
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
*)
// fsharpc mt9x9.fs && mono mt9x9.exe || fsharpi --quiet --exec mt9x9.fs

module mt9x9
for i in 1..3..9 do
    for j in 1..9 do
        List.iter (fun k ->
            printf "%dx%d=%2d\t" k j (k*j)) [i; i+1; i+2]
        printf "\n"
    printfn ""

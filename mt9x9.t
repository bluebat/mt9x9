#!/usr/bin/thune
/*
9x9 multiplication table in Thune
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
*/
; ./mt9x9.t || thune mt9x9.t

1 :i [
    1 :j [
        i :k [
            k prin 'x' prin j prin '=' prin
            10 k j mul gt? ift (' ' prin)
            k j mul prin '^-' prin
            k inc :k
        ] 3 loop
        '^/' prin
        j inc :j
    ] 9 loop
    '^/' prin
    3 i add :i
] 3 loop

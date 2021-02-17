#!/usr/bin/boron
/*
9x9 multiplication table in Boron
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
*/
; ./mt9x9.b || boron mt9x9.b

foreach i [1 4 7] [
    foreach j [1 2 3 4 5 6 7 8 9] [
        foreach K [0 1 2] [
            k: add i K
            prin rejoin [k 'x' j '=' format [-2] mul k j '^-']
        ]
        prin '^/'
    ]
    print ""
]
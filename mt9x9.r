#!/usr/bin/rebol -q
; 9x9 multiplication table in REBOL
; CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
; rebol -q mt9x9.r || ( chmod +x mt9x9.r ; ./mt9x9.r )

rebol []
foreach i [1 4 7] [
    repeat j 9 [
        for k i (i + 2) 1 [
            prin rejoin [k "x" j "=" either k * j < 10 [" "] [""] k * j tab]
        ]
        print ""
    ]
    print ""
]
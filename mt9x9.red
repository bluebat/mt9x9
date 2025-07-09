#!/usr/bin/red
{
9x9 multiplication table in Red
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2025.
}
; ./mt9x9.red || red mt9x9.red || redc -c mt9x9.red && ./mt9x9

Red []
foreach i [1 4 7] [
    repeat j 9 [
        k: i
        loop 3 [
            prin k prin "x" prin j prin "="
            prin either k * j < 10 [" "] [""]
            prin k * j prin tab
            k: k + 1
        ]
        prin "^/"
    ]
    print ""
]

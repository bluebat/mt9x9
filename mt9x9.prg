#!/usr/bin/hbrun
* 9x9 multiplication table in xBASE
* CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
* ./mt9x9.prg || hbrun mt9x9.prg

local i, j, k
for i := 1 to 9 step 3
    for j := 1 to 9
        for each k in {i, i+1, i+2}
            ?? str(k, 1) + "x" + str(j, 1) + "=" + str(k*j, 2) + chr(9)
        next
        ?? chr(10)
    next
    ?
next

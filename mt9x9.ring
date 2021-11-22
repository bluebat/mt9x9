#!/usr/bin/ring
/*
9x9 multiplication table in Ring
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
*/
// ./mt9x9 || ring mt9x9.ring

for i = 1 to 9 step 3
    for j = 1 to 9
        for k in [i, i+1, i+2]
            see "" + k + "x" + j + "="
            if k*j<10 see " " ok
            see "" + k*j + tab
        next
        put nl
    next
    ? ""
next

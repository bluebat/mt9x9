#[
9x9 multiplication table in Nim
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2020.
]#
# nim compile mt9x9.nim ; ./mt9x9

import strformat
for i in countup(1, 9, 3):
    for j in 1..9:
        for k in [i, i+1, i+2]:
            write(stdout, k, 'x', j, '=', &"{k*j:2d}", '\t')
        writeLine(stdout, "")
    echo()

#!/usr/bin/es
# 9x9 multiplication table in Rc
# CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2025.
# ./mt9x9.es || es mt9x9.es

I = .
for (i = 1 2 3) {
    II = $I
    for (j = 1 2 3 4 5 6 7 8 9) {
        I = $II
        for (K = 1 2 3) {
            k = $#I
            SS = ()
            for (S = 1 2 3 4 5 6 7 8 9) {
                SS = $SS $I
                if {~ $S $j} {break}
            }
            s = $#SS
            echo -n $k'x'$j'='
            if {~ $SS(10) ()} {echo -n ' '}
            echo -n $s\t
            I = $I .
        }
        echo -n \n
    }
    echo
}

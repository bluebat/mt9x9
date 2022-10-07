#!/usr/bin/axi
# 9x9 multiplication table in Afnix
# CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2022.
# axc mt9x9.als && axi mt9x9.axc || axi mt9x9.als

trans i 0
trans j 0
trans k 0
loop (i:= 1) (<= i 9) (i:+= 3) {
    loop (j:= 1) (<= j 9) (j:++) {
        loop (k:= i) (<= k (+ i 2)) (k:++) {
            trans s (String (* k j))
            print k 'x' j '=' (s:fill-left ' ' 2) '\t'
        }
        print '\n'
    }
    println
}

#!/usr/bin/wren
/*
9x9 multiplication table in Wren
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
*/
// wren mt9x9.wren || ./mt9x9.wren

for (i in (1...10).where {|n| n % 3 == 1 }) {
    for (j in 1..9) {
        [i, i+1, i+2].each {|k|
            System.write("%(k)x%(j)=%(k*j<10?" ":"")%(k*j)\t")
        }
        System.write("\n")
    }
    System.print()
}

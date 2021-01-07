#!/usr/bin/groovy
/*
9x9 multiplication table in Groovy
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
*/
// groovy mt9x9.gsh ; ( chmod +x mt9x9.gsh ; ./mt9x9.gsh )

for(i in (1..9).step(3)) {
    for(j in (1..9)) {
        for(k in [i, i+1, i+2]) {
            printf("%dx%d=%2d\t", k, j, k*j)
        }
        println()
    }
    println ""
}

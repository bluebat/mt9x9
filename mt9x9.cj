/*
9x9 multiplication table in Cangjie(倉頡)
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2025.
*/
// cjc mt9x9.cj -o mt9x9 && ./mt9x9

import std.convert.*
main() {
    var i: Int64 = 1
    while (i <= 9) {
        for (j in 1..10) {
            for (k in [i, i+1, i+2]) {
                print("${k}x${j}=${(k*j).format('2')}\t")
            }
            print("\n")
        }
        println()
        i += 3
    }
}

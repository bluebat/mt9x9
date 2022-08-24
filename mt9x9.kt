/*
9x9 multiplication table in Kotlin
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2022.
*/
// kotlinc-native -o mt9x9 mt9x9.kt && ./mt9x9.kexe

fun main() {
    for (i in 1..9 step 3) {
        for (j in 1..9) {
            (i..i+2).forEach {
                print("${it}x${j}=")
                print((it*j).toString().padStart(2) + "\t")
            }
            print("\n")
        }
        println()
    }
}

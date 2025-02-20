#!/usr/bin/golosh
# 9x9 multiplication table in Golo
# CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2025.
# ./mt9x9.golo || golosh mt9x9.golo

module mt9x9
function main = |args| {
    for (var i = 1, i <= 9, i = i+3) {
        foreach j in range(1, 10) {
            foreach k in [i..i+3] {
                print(k+"x"+j+"="+"%2d":format(k*j)+"\t")
            }
            print("\n")
        }
        println("")
    }
}


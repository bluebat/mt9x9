// 9x9 multiplication table in Koka
// CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2025.
// koka -v0 -e mt9x9.kk || 
// koka mt9x9.kk -o mt9x9 && chmod +x mt9x9 && ./mt9x9

module mt9x9
pub fun main()
    var i := 1
    while{i < 10}
        list(1, 9).map fn(j)
            [i, i+1, i+2].foreach fn(k)
                print(k.show ++ "x" ++ j.show ++ "=")
                if k*j < 10 then print(" ")
                print((k*j).show ++ "\t")
            print("\n")
        println("")
        i := i+3

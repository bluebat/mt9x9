/*
9x9 multiplication table in Daslang
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2022.
*/
// daScript mt9x9.das

require strings
[export]
def main
    for i in [[int[3] 1; 4; 7]]
        for j in range(1, 10)
            for k in range(i, i+3)
                print("{k}x{j}={format("%2d", k*j)}\t")
            print("\n")
        print("\n")

// 9x9 multiplication table in Elena
// CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2023.
// elena64-cli mt9x9.l && ./mt9x9

import extensions;
public program() {
    for(int i := 1, i <= 9, i += 3) {
        for(int j := 1, j <= 9, j += 1) {
            for(int k := i, k <= i+2, k += 1) {
                console
                    .print(k, "x", j, "=")
                    .print((10 > k*j).iif(" ", ""))
                    .print(k*j, $9)
            };
            console.printLine()
        };
        console.writeLine()
    };
}

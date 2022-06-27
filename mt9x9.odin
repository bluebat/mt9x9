/*
9x9 multiplication table in Odin
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2022.
*/
// odin-lang build mt9x9.odin -file && ./mt9x9.bin

package mt9x9
import "core:fmt"
main :: proc() {
    for i := 1; i <= 9; i += 3 {
        for j in 1..=9 {
            for k in ([]int{i, i+1, i+2}) {
                fmt.printf("%dx%d=", k, j);
                if k*j<10 do fmt.print(" ");
                fmt.printf("%d\t", k*j);
            }
            fmt.print("\n");
        }
        fmt.println();
    }
}

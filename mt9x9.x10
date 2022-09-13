/*
9x9 multiplication table in X10
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2022.
*/
// x10c mt9x9.x10 && x10 mt9x9

import x10.io.Console;
class mt9x9 {
    public static def main(args:Rail[String]):void {
        for (var i:Int = 1n; i <= 9n; i += 3n) {
            for (j in 1..9) {
                for (k in [i, i+1n, i+2n]) {
                    Console.OUT.printf("%dx%d=%2d\t", k, j, k*j);
                }
                Console.OUT.print("\n");
            }
            Console.OUT.println();
        }    
    }
}

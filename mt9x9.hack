#!/usr/bin/hhvm
/*
9x9 multiplication table in Hack
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
*/
// ./mt9x9.hack || hhvm mt9x9.hack

<<__EntryPoint>>
function main(): void {
    for ($i = 1; $i <= 9; $i += 3) {
        for ($j = 1; $j <= 9; $j++) {
            foreach (vec[$i, $i+1, $i+2] as $k) {
                printf("%dx%d=%2d\t", $k, $j, $k*$j);
            }
            print("\n");
        }
        echo "\n";
    }
}

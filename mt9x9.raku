#!/usr/bin/rakudo
#`(
9x9 multiplication table in Raku
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
)
# ./mt9x9.raku || rakudo mt9x9.raku

for 1,4,7 -> $i {
    for 1..9 -> $j {
        for $i, $i+1, $i+2 -> $k {
            printf "%dx%d=%2d\t", $k, $j, $k*$j;
        }
        print "\n";
    }
    say "";
}

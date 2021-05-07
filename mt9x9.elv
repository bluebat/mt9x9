#!/usr/bin/elvish
# 9x9 multiplication table in Elvish
# CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
# ./mt9x9.elv || elvish mt9x9.elv

for i [(range 1 10 &step=3)] {
    for j [(range 1 10)] {
        for k [$i (+ $i 1) (+ $i 2)] {
            printf '%dx%d=%2d\t' $k $j (* $k $j)
        }
        print "\n"
    }
    echo
}

#!/usr/bin/bash
# 9x9 multiplication table in BASH
# CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
# ./mt9x9.sh || bash mt9x9.sh

for i in {1..9..3}; do
    for (( j = 1; j <= 9; j++ )); do
        for k in $i $((i+1)) $((i+2)); do
            printf '%dx%d=%2d\t' $k $j $((k*j))
        done
        printf '\n'
    done
    echo
done

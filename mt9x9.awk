#!/usr/bin/awk -f
# 9x9 multiplication table in AWK
# CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
# ./mt9x9.awk || awk -f mt9x9.awk

BEGIN {
    for(i = 1; i <= 9; i += 3) {
        for(j = 1; j <= 9; j++) {
            for(k = i; k <= i+2; k++)
                printf("%dx%d=%2d\t", k, j, k*j)
            printf "\n"
        }
        print
    }
}

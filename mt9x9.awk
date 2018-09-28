#!/usr/bin/awk -f
# 9x9 multiplication table in AWK
# CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
# awk -f mt9x9.awk || ( chmod +x mt9x9.awk ; ./mt9x9.awk )

BEGIN {
    for(i = 1; i <= 9; i+=3) {
        for(j = 1; j <= 9; j++) {
            for(k = i; k < i+3; k++)
                printf("%dx%d=%2d\t", k, j, k*j)
            printf("\n")
        }
        printf("\n")
    }
}

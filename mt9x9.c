// 9x9 multiplication table in C
// CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
// gcc mt9x9.c -o mt9x9 ; ./mt9x9

#include <stdio.h>
int main(int argc, char *argv[]) {
    int i, j, k;
    for(i = 1; i <= 9; i += 3) {
        for(j = 1; j <= 9; j++) {
            for(k = i; k < i+3; k++)
                printf("%dx%d=%2d\t", k, j, k*j);
            putchar(10);
        }
        printf("\n");
    }
}

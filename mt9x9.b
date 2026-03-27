/*
9x9 multiplication table in B
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2026.
*/
/* bcause mt9x9.b -o mt9x9 && ./mt9x9 */

main() {
    auto i, j, k;
    i = 1;
    while(i < 10) {
        j = 0;
        while(j++ < 9) {
            k = i;
            while(k <= i+2) {
                putchar('0'+k);
                putchar('x');
                putchar('0'+j);
                putchar('=');
                putchar((k*j < 10)?' ':'');
                printn(k*j, 10);
                putchar(9);
                k =+ 1;
            }
            putchar(10);
        }
        putchar('*n');
        i =+ 3;
    }
}

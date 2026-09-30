/*
9x9 multiplication table in B
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2026.
*/
/* bcause mt9x9.b -o mt9x9 && ./mt9x9 */

main() {
    auto i, j, k;
    i = 0;
    while(i < 9) {
        j = 0;
        while(j++ < 9) {
            k = i;
            while(k++ <= i+2) {
                putchar(k+'0');
                putchar('x');
                putchar(j+'0');
                putchar('=');
                putchar((k*j < 10)?' ':'');
                printn(k*j, 10);
                putchar(9);
            }
            putchar(10);
        }
        putchar('*n');
        i =+ 3;
    }
}

/*
9x9 multiplication table in HolyC
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2026.
*/
// hcc mt9x9.HC -o mt9x9 && ./mt9x9

U0 Main(I32 argc, U8 **argv) {
    for (auto i = 1; i <= 9; i += 3) {
        for (auto j = 1; j <= 9; j++) {
            for (auto k = i; k <= i+2; k++)
                "%dx%d=%2d\t", k, j, k*j;
            "\n";
        }
        '\n';
    }
}

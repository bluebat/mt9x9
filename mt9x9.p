/*
9x9 multiplication table in Pawn
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2022.
*/
// pawncc mt9x9.p && pawnrun mt9x9.amx

main() {
    for (new i = 1; i <= 9; i += 3) {
        for (new j = 1; j <= 9; j++) {
            for (new k = i; k <= i+2; k++) {
                printf "%dx%d=%2d\t", k, j, k*j
            }
            printf "\n"
        }
        print "\n"
    }
}

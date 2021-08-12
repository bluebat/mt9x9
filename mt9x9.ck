/*
9x9 multiplication table in Chuck
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
*/
// chuck mt9x9.ck

for (1 => int i; i < 10; 3 +=> i) {
    for (1 => int j; j < 10; j++) {
        for (i => int k; k <= i+2; k++) {
            chout <= k <= "x" <= j <= "=";
            if (k*j < 10) chout <= " ";
            chout <= k*j <= "\t";
        }
        chout <= "\n";
    }
    chout <= IO.nl();
}

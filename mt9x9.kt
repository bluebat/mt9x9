#!/usr/bin/kite
/[
9x9 multiplication table in Kite
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2022.
]/
# ./mt9x9.kt || kite mt9x9.kt

i = 1;
while(i <= 9) [
    j = 1;
    while(j <= 9) [
        k = i;
        s = "";
        until(k > 2+i) [
            s = s + ("%dx%d=%2d\t" | format([k, j, k*j]));
            k = k + 1;
        ];
        s | print;
        j = j + 1;
    ];
    "" | print;
    i = i + 3;
];

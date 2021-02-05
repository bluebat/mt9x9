#!/usr/bin/slsh
% 9x9 multiplication table in S-Lang
% CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
% ./mt9x9.sl || slsh mt9x9.sl

variable i, j, k;
foreach i ([1:9:3]) {
    foreach j ([1:9]) {
        foreach k ([i, i+1, i+2]) {
            printf("%dx%d=%2d\t", k, j, k*j);
        }
        fprintf(stdout, "\n");
    }
    fputs("\n", stdout);
}

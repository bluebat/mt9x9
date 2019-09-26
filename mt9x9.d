// 9x9 multiplication table in D
// CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2019.
// ldc2 -run mt9x9.d || ldc2 mt9x9.d ; ./mt9x9

import std.stdio;
void main() {
    int i, j, k;
    for(i = 1; i <= 9; i += 3) {
        for(j = 1; j <= 9; j++) {
            for(k = i; k < i+3; k++)
                writef("%dx%d=%2d\t", k, j, k*j);
            write(char(10));
        }
        writeln();
    }
}

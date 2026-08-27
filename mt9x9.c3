/*
9x9 multiplication table in C3
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2026.
*/
// c3c compile mt9x9.c3 && ./mt9x9

import std::io;
fn void main() {
    for (int i = 1; i <= 9; i += 3) {
        for (int j = 1; j <= 9; j++) {
            foreach (k: (int[3]){i, i+1, i+2})
                io::printf("%dx%d=%2d\t", k, j, k*j);
            io::print("\n");
        }
        io::printn();
    }
}

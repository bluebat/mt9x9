#!/usr/bin/pike
// 9x9 multiplication table in Pike
// CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
// ./mt9x9.pike || pike mt9x9.pike

int main() {
    for(int i = 1; i <= 9; i += 3) {
        for(int j = 1; j <= 9; j++) {
            foreach(({i, i+1, i+2}), int k) {
                write(k+"x"+j+"="+sprintf("%2d\t", k*j));
            }
            write("\n");
        }
        write("\n");
    }
}

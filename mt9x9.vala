/*
9x9 multiplication table in Vala
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2022.
*/
// valac mt9x9.vala && ./mt9x9

void main() {
    for(int i = 1; i <= 9; i += 3) {
        for(int j = 1; j <= 9; j++) {
            int[] K = {i, i+1, i+2};
            foreach(int k in K)
                stdout.printf("%dx%d=%2d\t", k, j, k*j);
            print("\n");
        }
        stdout.putc('\n');
    }
}

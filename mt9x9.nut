#!/usr/bin/sq
/*
9x9 multiplication table in Squirrel
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2024.
*/
// ./mt9x9.nut || sq mt9x9.nut

for(local i = 1; i <= 9; i += 3) {
    for(local j = 1; j <= 9; j++) {
        foreach(k in [i, i+1, i+2]) {
	    printf("%dx%d=%2d\t", k, j, k*j);
        }
        print("\n");
    }
    print("\n");
}

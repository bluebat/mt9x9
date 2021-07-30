/*
9x9 multiplication table in Chapel
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
*/
// chpl mt9x9.chpl && ./mt9x9

for i in 1..9 by 3 {
    for j in 1..9 {
        for k in [i, i+1, i+2] {
            writef("%{#}x%{#}=%{##}\t", k, j, k*j);
        }
        write('\n');
    }
    writeln();
}

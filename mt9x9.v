/*
9x9 multiplication table in V
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
*/
// vlang mt9x9.v && ./mt9x9 || vlang run mt9x9.v

fn main() {
    for i := 1; i <= 9; i += 3 {
        for j in 1..10 {
            for k in [i, i+1, i+2] {
                print('${k}x${j}=${k*j:2}\t')
            }
            print('\n')
        }
        println('')
    }
}

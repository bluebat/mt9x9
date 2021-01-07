/*
9x9 multiplication table in Ceylon
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
*/
// ceylon compile --source . mt9x9.ceylon ; ceylon run default

shared void run() {
    for(i in (1..9).by(3)) {
        for(j in 1..9) {
            for(k in [i, i+1, i+2]) {
                process.write("``k``x``j``=");
                process.write("``k*j<10 then " " else ""````k*j``\t");
            }
            print("");
        }
        print("");
    }
}

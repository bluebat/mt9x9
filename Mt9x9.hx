/*
9x9 multiplication table in Haxe
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2020.
*/
// haxe --main Mt9x9 --interp
class Mt9x9 {
    static function main() {
        for (i in [1, 4, 7]) {
            for (j in 1...10) {
                for (k in i...i+3) {
                    Sys.print(k+'x'+j+'='+(k*j>9?'':' ')+k*j+'\t');
                }
                Sys.print('\n');
            }
            Sys.println('');
        }
    }
}

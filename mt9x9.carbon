// 9x9 multiplication table in Carbon
// CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2025.
// carbon compile mt9x9.carbon && carbon link mt9x9.o --output=mt9x9 && ./mt9x9

import Core library "io";
fn Run() {
    var i: i32 = 1;
    while (i <= 9) {
        var j: i32 = 1;
        while (j <= 9) {
            var k: i32 = i;
            while (k <= i+2) {
                Core.PrintChar(k+48);
                Core.PrintChar(120);
                Core.PrintChar(j+48);
                Core.PrintChar(61);
                var s: i32 = k*j/10;
                if (s == 0) {
                    Core.PrintChar(32);
                } else {
                    Core.PrintChar(s+48);
                }
                Core.PrintChar(((k*j)%10)+48);
                Core.PrintChar(9);
                ++k;
            }
            Core.PrintChar(10);
            ++j;
        }
        Core.PrintChar(10);
        i += 3;
    }
}

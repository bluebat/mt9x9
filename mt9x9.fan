#!/usr/bin/fan
/*
9x9 multiplication table in Fantom
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
*/
// ./mt9x9.fan || fan mt9x9.fan

class mt9x9 {
    static Void main() {
        for(i := 1; i < 9; i += 3) {
            for(j := 1; j <= 9; j++) {
                [i, i+1, i+2].each |Int k| {
                    Env.cur.out.print(k.toStr+"x"+j.toStr+"="+
                        (k*j).toStr.padl(2,' ')+"\t")
                }
                Env.cur.out.printLine()
            }
            echo()
        }
    }
}

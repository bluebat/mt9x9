// 9x9 multiplication table in SurgeScript
// CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2022.
// surgescript mt9x9.ss

object "Application" {
    state "main" {
        for(i = 1; i <= 9; i += 3) {
            for(j = 1; j <= 9; j++) {
                foreach(k in [i, i+1, i+2]) {
                    Console.write(k+"x"+j+"="+(k*j<10?" ":"")+k*j+"\t");
                }
                Console.write("\n");
            }
            Console.print("");
        }
        Application.exit();
    }
}

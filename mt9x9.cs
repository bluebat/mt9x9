/*
9x9 multiplication table in C#
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2020.
*/
// mcs mt9x9.cs && ./mt9x9.exe

using System;
class Program {
    static void Main(string[] args) {
        int i, j, k;
        for (i = 1; i <= 9; i += 3) {
            for (j = 1; j <= 9; j++) {
                for (k = i; k <= i+2; k++)
                    Console.Write("{0}x{1}={2}\t", k, j, (k*j).ToString().PadLeft(2));
                Console.Write("\n");
            }
            Console.WriteLine();
        }
    }
}

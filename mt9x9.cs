#!/usr/bin/csharp -s
/*
9x9 multiplication table in CSharp
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2020.
*/
// csharp -s mt9x9.cs || ( chmod +x mt9x9.cs ; ./mt9x9.cs )

int i, j, k;
for (i = 1; i <= 9; i += 3) {
    for (j = 1; j <= 9; j++) {
        for (k = i; k < i+3; k++)
            Console.Write("{0}x{1}={2}\t", k, j, (k*j).ToString().PadLeft(2));
        Console.Write("\n");
    }
    Console.WriteLine();
}

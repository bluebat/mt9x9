#!/usr/bin/booi
/*
9x9 multiplication table in Boo
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
*/
// booc mt9x9.boo && mono mt9x9.exe || ./mt9x9.boo || booi mt9x9.boo

for i in range(1, 10, 3):
    for j in range(1, 10):
        for k as int in [i, i+1, i+2]:
            System.Console.Write("${k}x${j}=")
            if k*j < 10:
                System.Console.Write(" ")
            System.Console.Write("${k*j}\t")
        print("")
    print

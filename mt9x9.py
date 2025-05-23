#!/usr/bin/snek
# 9x9 multiplication table in Snek
# CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2025.
# ./mt9x9.py || snek mt9x9.py

for i in range(1, 10, 3):
    for j in range(1, 10):
        for k in [i, i+1, i+2]:
            print("%dx%d=" % (k, j), end='')
            if k*j < 10: print(" ", end='')
            print(k*j, end='\t')
        print(end='\n')
    print()

#!/usr/bin/python3
"""
9x9 multiplication table in Python
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
"""
# ./mt9x9.py3 || python3 mt9x9.py3

for i in range(1, 10, 3):
    for j in range(1, 10):
        for k in [i, i+1, i+2]:
            print(f"{k}x{j}={k*j:2}", end='\t')
        print(end='\n')
    print()

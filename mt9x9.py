#!/usr/bin/python3
"""
9x9 multiplication table in Python3
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
"""
# python3 mt9x9.py || ( chmod +x mt9x9.py ; ./mt9x9.py )

for i in range(1, 10, 3):
    for j in range(1, 10):
        for k in [i, i+1, i+2]:
            print("%dx%d=%2d" % (k, j, k*j), end='\t')
        print()
    print()

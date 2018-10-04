#!/usr/bin/bas
rem 9x9 multiplication table in BASIC
rem CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
rem bas mt9x9.bas || ( chmod +x mt9x9.bas ; ./mt9x9.bas )

for i = 1 to 9 step 3
    for j = 1 to 9
        for k = i to i+2
            print using "#x#=##"; k, j, k*j, tab((k-i)*8+9);
        next k
        print
    next j
    print
next i

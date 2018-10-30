#!/usr/bin/bas
rem 9x9 multiplication table in BASIC
rem CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
rem bas mt9x9.bas || ( chmod +x mt9x9.bas ; ./mt9x9.bas )

for i = 1 to 9 step 3
    for j = 1 to 9
        for k = i to i+2
            print using "#x#=##"+chr$(9); k, j, k*j;
        next k
        print chr$(10);
    next j
    print
next i

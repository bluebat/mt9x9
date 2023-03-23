/'
9x9 multiplication table in FreeBASIC
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2023.
'/
' fbc mt9x9.bas && ./mt9x9

for i as integer = 1 to 9 step 3
    for j as integer = 1 to 9
        for k as integer = i to i+2
            print using "#x#=##"+chr(9); k; j; k*j;
        next
        print chr(10);
    next
    print
next

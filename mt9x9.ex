#!/usr/bin/phix
/*
9x9 multiplication table in Euphoria
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
*/
-- phix mt9x9.ex

for i = 1 to 9 by 3 do
    for j = 1 to 9 do
        for k = i to i+2 do
            printf(1, "%dx%d=%2d\t", {k,j,k*j})
        end for
        puts(1, "\n")
    end for
    puts(1, "\n")
end for
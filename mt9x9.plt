#!/usr/bin/gnuplot
# \
9x9 multiplication table in Gnuplot \
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
# ./mt9x9.plt || gnuplot mt9x9.plt

s = ""
do for [i = 1:9:3] for [j = 1:9] for [k = i:i+2] {
    s = s.sprintf('%dx%d=%2d', k, j, k*j)
    if (k != i+2) {s = s."\t"} else {
        if (j == 9) {print s."\n"} else {print s}
        s = ""
    }
}

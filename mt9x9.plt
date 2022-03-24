#!/usr/bin/gnuplot
# \
9x9 multiplication table in Gnuplot \
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
# ./mt9x9.plt || gnuplot mt9x9.plt

do for [i = 1:9:3] for [j = 1:9] {
    s = ""
    do for [k = i:i+2] {
        s = s.sprintf("%dx%d=%2d\t", k, j, k*j)
    }
    if (j == 9) {print s."\n"} else {print s}
}

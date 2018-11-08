#! /usr/bin/gforth
\ 9x9 multiplication table in Forth
\ CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
\ gforth mt9x9.fs || ( chmod +x mt9x9.fs ; ./mt9x9.fs )

: mt9x9
    10 1 do
        10 1 do
            3 0 do
                i k + 1 u.r 120 emit
                j 1 u.r 61 emit
                i k + j * 2 u.r 9 emit
            loop
            10 emit
        loop
        cr
    3 +loop ;
mt9x9 bye

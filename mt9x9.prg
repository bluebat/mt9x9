#!/usr/bin/hbrun
* 9x9 multiplication table in xBASE
* CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
* hbrun mt9x9.prg || ( chmod +x mt9x9.prg ; ./mt9x9.prg )

LOCAL i, j, k
FOR i := 1 TO 9 STEP 3
    FOR j := 1 TO 9
        FOR EACH k IN {i, i+1, i+2}
            ?? STR(k, 1) + "x" + STR(j, 1) + "=" + STR(k*j, 2) + CHR(9)
        NEXT
        ?? CHR(10)
    NEXT
    ?
NEXT

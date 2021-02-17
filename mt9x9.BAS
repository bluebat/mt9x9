#!/usr/bin/basica
1 REM 9x9 multiplication table in BASICA
2 REM CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
3 REM ./mt9x9.BAS || basica mt9x9.BAS

10 FOR i = 1 TO 9 STEP 3
20 FOR j = 1 TO 9
30 FOR k = i TO i+2
40 PRINT USING "#x#=##"+chr$(9); k, j, k*j;
50 NEXT
60 PRINT CHR$(10);
70 NEXT
80 PRINT
90 NEXT

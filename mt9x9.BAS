#!/usr/bin/basica
1 REM 9x9 multiplication table in BASICA
2 REM CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
3 REM ./mt9x9.BAS || basica mt9x9.BAS

10 FOR I = 1 TO 9 STEP 3
20 FOR J = 1 TO 9
30 FOR K = I TO I+2
40 PRINT USING "#x#=##"+CHR$(9); K, J, K*J;
50 NEXT
60 PRINT CHR$(10);
70 NEXT
80 PRINT
90 NEXT

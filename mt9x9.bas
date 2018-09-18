#!/usr/bin/bas
REM 9x9 multiplication table in BASIC
REM CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018
REM bas mt9x9.bas || ( chmod +x mt9x9.bas ; ./mt9x9.bas )

FOR I = 1 TO 9 STEP 3
    FOR J = 1 TO 9
        FOR K = I TO I+2
            PRINT USING "#x#=##";K,J,K*J,TAB((K-I)*8+9);
        NEXT K
        PRINT
    NEXT J
    PRINT
NEXT I

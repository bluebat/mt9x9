* 9x9 multiplication table in SPSS
* CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2022.
* pspp mt9x9.sps

NEW FILE.
INPUT PROGRAM.
    STRING #s #s0 TO #s2 (A6).
    LOOP #i = 1 TO 9 BY 3.
        LOOP #j = 1 TO 9.
            LOOP #k = #i TO #i+2.
                COMPUTE #s = CONCAT(STRING(#k,F1),"x",STRING(#j,F1),"=",STRING(#k*#j,F2)).
                IF(#k = #i) #s0 = #s.
                IF(#k = #i+1) #s1 = #s.
                IF(#k = #i+2) #s2 = #s.
            END LOOP.
            PRINT / #s0(A6) "	" #s1(A6) "	" #s2(A6).
        END LOOP.
        PRINT.
    END LOOP.
    WRITE.
    END FILE.
END INPUT PROGRAM.
EXECUTE.

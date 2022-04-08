* 9x9 multiplication table in SPSS
* CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2022.
* pspp mt9x9.sps

new file.
input program.
    loop #i=1 to 9 by 3.
        loop #j=1 to 9.
            compute #k1=#i.
            compute #s1=#k1*#j.
            compute #k2=#i+1.
            compute #s2=#k2*#j.
            compute #k3=#i+2.
            compute #s3=#k3*#j.
            write / #k1(F1) "x" #j(F1) "=" #s1(F2) "  "
                    #k2(F1) "x" #j(F1) "=" #s2(F2) "  " 
                    #k3(F1) "x" #j(F1) "=" #s3(F2).
        end loop.
        write.
    end loop.
    print.
    end file.
end input program.
execute.

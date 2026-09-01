#!/usr/bin/cmake -P
#[[
9x9 multiplication table in CMake
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2026.
]]
# ./mt9x9.cmake || cmake -P mt9x9.cmake

foreach(i RANGE 1 9 3)
    foreach(j RANGE 1 9)
        foreach(K 0 1 2)
            math(EXPR k "${i} + ${K}")
            math(EXPR s "${k} * ${j}")
            file(APPEND "/dev/stdout" "${k}x${j}=")
            if(${s} LESS 10)
                file(APPEND "/dev/stdout" " ")
            endif()
            file(APPEND "/dev/stdout" "${s}\t")
        endforeach(K)
        file(APPEND "/dev/stdout" "\n")
    endforeach(j)
    message("")
endforeach(i)

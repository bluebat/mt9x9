#!/usr/bin/io
/*
9x9 multiplication table in Io
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2020.
*/
// io mt9x9.io || ( chmod +x mt9x9.io ; ./mt9x9.io )

for(i, 1, 9, 3,
    for(j, 1, 9,
        list(i, i+1, i+2) foreach(k,
            write(k, "x", j, "=", if(k*j<10," ",""), k*j, "\t")
        )
        "" println
    )
    writeln
)

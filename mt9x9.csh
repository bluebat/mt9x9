#!/usr/bin/tcsh
# 9x9 multiplication table in CSH
# CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2020.
# ./mt9x9.csh || tcsh mt9x9.csh

foreach i (1 4 7)
    set j = 1
    while ($j <= 9)
        foreach K (0 1 2)
            @ k = $i + $K
            echo -n "$k"x"$j"=
            @ s = $k * $j
            if ($s < 10) echo -n " "
            echo -n "$s\t"
        end
        echo -n "\n"
        @ j++
    end
    echo
end

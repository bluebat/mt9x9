#!/usr/bin/tcsh -f
# 9x9 multiplication table in CSH
# CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2020.
# tcsh -f mt9x9.csh || ( chmod +x mt9x9.csh ; ./mt9x9.csh )

foreach i (1 4 7)
    foreach j (1 2 3 4 5 6 7 8 9)
        foreach K (0 1 2)
            @ k = $i + $K
            echo -n "$k"x"$j"=
            @ s = $k * $j
            if ($s < 10) echo -n " "
            echo -n "$s\t"
        end
        echo -n "\n"
    end
    echo
end

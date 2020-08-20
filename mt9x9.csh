#!/usr/bin/tcsh -f
# 9x9 multiplication table in TCSH
# CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2020.
# tcsh mt9x9.csh || ( chmod +x mt9x9.csh ; ./mt9x9.csh )

foreach i (1 4 7)
    foreach j (1 2 3 4 5 6 7 8 9)
        set k = $i
        @ K = $i + 2
        while ($k <= $K)
            @ s = $k * $j
            echo -n "$k"x"$j"=
            if ($s < 10) echo -n " "
            echo -n "$s\t"
            @ k++
        end
        echo -n "\n"
    end
    echo
end

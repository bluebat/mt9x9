#!/usr/bin/janet
# 9x9 multiplication table in Janet
# CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
# ./mt9x9.janet || janet mt9x9.janet

(loop [i :range [1 9] :when (zero? (% (- i 1) 3))]
    (for j 1 10
        (each k [i (+ i 1) (+ i 2)]
            (prin k "x" j "=" (string/format "%2d" (* k j)) "\t")
        )
        (print)
    )
    (print)
)

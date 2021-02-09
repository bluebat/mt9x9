#!/usr/bin/es
# 9x9 multiplication table in eslang
# CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
# ./mt9x9.es || es mt9x9.es

(for i in (1 10 3)
    (for j in (1 10)
        (for k in (@ i (i + 1) (+ i 2))
            (printf '$(k)x$(j)=')
            (if ((k * j) < 10) (printf " "))
            (printf '$(k * j)\t')
        )
        (printf "\n")
    )
    (print)
)

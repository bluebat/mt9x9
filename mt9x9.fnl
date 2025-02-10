#!/usr/bin/fennel
; 9x9 multiplication table in Fennel
; CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2025.
; ./mt9x9.fnl || fennel mt9x9.fnl

(for [i 1 9 3]
    (for [j 1 9]
        (each [_ k (ipairs [i (+ i 1) (+ i 2)])]
            (io.write k "x" j "=")
            (if (< (* k j) 10) (io.write " "))
            (io.write (* k j) "\t")
        )
        (io.write "\n")
    )
    (print)
)
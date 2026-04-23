; 9x9 multiplication table in Arc
; CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2026.
; arcadia mt9x9.arc

(let i 1
    (while (< i 9)
        (for j 1 9
            (each k (list i (+ i 1) (+ i 2))
                (pr k "x" j "=" (if (< (* k j) 10) " " "") (* k j) "\t")
            )
            (pr "\n")
        )
        (prn)
        (++ i 3)
    )
)

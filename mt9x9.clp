#!/usr/bin/clips -f2
; 9x9 multiplication table in CLIPS
; CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2026.
; ./mt9x9.clp || clips -f2 mt9x9.clp

(foreach ?i (create$ 1 4 7)
    (loop-for-count (?j 1 9)
        (bind ?k ?i)
        (while (<= ?k (+ ?i 2))
            (printout t ?k "x" ?j "=")
            (if (< (* ?k ?j) 10)
                then (printout t " ")
            )
            (printout t (* ?k ?j) tab)
            (bind ?k (+ ?k 1))
        )
        (printout t crlf)
    )
    (printout t crlf)
)
(exit)

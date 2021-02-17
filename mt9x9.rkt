#!/usr/bin/racket
#|
9x9 multiplication table in Racket
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
|#
; ./mt9x9.rkt || racket mt9x9.rkt

#lang racket
(for ([i (in-range 1 10 3)])
    (for ([j (in-range 1 10)])
        (for ([k (list i (+ i 1) (+ i 2))])
            (printf "~ax~a=" k j)
            (display (~a (* k j) #:width 2 #:align 'right))
            (printf "\t")
        )
        (displayln "")
    )
    (newline)
)

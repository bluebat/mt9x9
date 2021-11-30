#!/usr/bin/txr -f
;; 9x9 multiplication table in TXR Lisp
;; CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
;; ./mt9x9.tl || ./txr -f mt9x9.tl

(each ((i (range 1 9 3)))
    (each ((j (range 1 9)))
        (each ((k (list i (+ i 1) (+ i 2))))
            (format t "~ax~a=~2a\t" k j (* k j))
        )
        (put-string "\n")
    )
    (put-line)
)

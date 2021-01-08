#!/usr/bin/gcl -f
#|
9x9 multiplication table in CommonLisp
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
|#
; ./mt9x9.lisp || gcl -f mt9x9.lisp

(dolist (i '(1 4 7))
    (dolist (j '(1 2 3 4 5 6 7 8 9))
        (dolist (k (list i (+ i 1) (+ i 2)))
            (format t "~Dx~D=~2D ~@T" k j (* k j))
        )
        (format t "~%")
    )
    (terpri)
)

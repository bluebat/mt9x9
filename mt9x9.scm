#!/usr/bin/guile -s
9x9 multiplication table in Scheme
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
!#
; ./mt9x9.scm || guile -s mt9x9.scm

(use-modules (ice-9 format))
(for-each
    (lambda (i)
        (for-each
            (lambda (j)
                (for-each
                    (lambda (k)
                         (format #t "~dx~d=~2d~c" k j (* k j) #\tab))
                    (list i (+ i 1) (+ i 2)))
                (display #\newline))
            (map 1+ (iota 9)))
        (newline))
    '(1 4 7))
 

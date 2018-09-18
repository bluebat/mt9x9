#!/usr/bin/guile -s
!#
; 9x9 multiplication table in Scheme
; CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018
; guile mt9x9.scm || ( chmod +x mt9x9.scm ; ./mt9x9.scm )

(use-modules (ice-9 format))
(for-each
    (lambda (i)
        (for-each
            (lambda (j)
                (for-each
                    (lambda (k)
                         (format #t "~dx~d=~2d~c" k j (* k j) #\tab))
                    (list i (+ i 1) (+ i 2)))
                (newline))
            '(1 2 3 4 5 6 7 8 9))
        (newline))
    '(1 4 7))
 
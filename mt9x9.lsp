#!/usr/bin/newlisp
# 9x9 multiplication table in newLISP
# CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2022.
; ./mt9x9.lsp || newlispmt9x9.lsp

(for (i 1 9 3)
    (for (j 1 9)
        (for (k i (+ i 2))
            (print (format "%dx%d=%2d\t" k j (* k j)))
        )
        (print "\n")
    )
    (println)
)
(exit)

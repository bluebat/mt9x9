\*
9x9 multiplication table in Shen(神)
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2025.
*\
\\ shen-scheme script mt9x9.shen

(define item
    J K -> (output "~Ax~A=~A~Ac#9;" K J (if (< (* K J) 10) " " "") (* K J))
)
(define line
    I J -> (do (map (item J) [I (+ I 1) (+ I 2)])
               (output "~%"))
)
(define block
    I -> (do (map (line I) [1 2 3 4 5 6 7 8 9])
             (nl))
)
(map (fn block) [1 4 7])

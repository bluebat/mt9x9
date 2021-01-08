#!/usr/bin/clojure
(comment
9x9 multiplication table in Clojure
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
)
;; ./mt9x9.clj || clojure mt9x9.clj

(doseq [i (range 1 10 3) j (range 1 10) k [i (+ i 1) (+ i 2)]]
    (printf "%dx%d=%2d" k j (* k j))
    (print (if (not= k (+ i 2)) "\t" (if (= j 9) "\n\n" "\n")))
)

#!/usr/bin/Rscript
# 9x9 multiplication table in R
# CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
# Rscript mt9x9.R || ( chmod +x mt9x9.R ; ./mt9x9.R )

for(i in seq(1, 9, by=3)) {
    for(j in 1:9) {
        for(k in i:(i+2)) {
            cat(sprintf("%dx%d=%2d\t", k, j, k*j))
        }
        cat("\n")
    }
    cat("\n")
}

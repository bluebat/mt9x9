dnl 9x9 multiplication table in M4
dnl CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2023.
dnl m4 mt9x9.m4
dnl
define(`item', `$2x$1=ifelse(eval($2*$1<10), 1, ` ')eval($2*$1)	')dnl
define(`line', `ifelse(eval($3<=eval($1+2)), 1, item($2, $3)dnl
`line($1, $2, incr($3))')')dnl
define(`block', `ifelse(eval($2<=9), 1, line($1, $2, $1)
`block($1, incr($2))')')dnl
define(`main', `ifelse(eval($1<=9), 1, block($1, 1)
`main(eval($1+3))')')dnl
main(1)dnl
dnl

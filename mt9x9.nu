#!/usr/bin/nu
# 9x9 multiplication table in Nu
# CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2024.
# ./mt9x9.nu || nu mt9x9.nu

for i in 1..4..9 {
    for j in 1..9 {
        [$i ($i + 1) ($i + 2)] | each { |k|
            print -n $k x $j = (if ($k * $j) < 10 {" "}) ($k * $j) "\t"
        }
        char newline | print -n
    }   
    print ""
}

#!/usr/bin/fish
# 9x9 multiplication table in Fish
# CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
# ./mt9x9.fish || fish mt9x9.fish

for i in (seq 1 3 9)
    for j in (seq 9)
        for k in $i (math $i + 1) (math $i + 2)
            printf %dx%d=%2d\t $k $j (math "$k * $j")
        end
        printf \n
    end
    echo
end

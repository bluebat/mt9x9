#!/usr/bin/rexx
-- 9x9 multiplication table in Rexx
-- CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
-- rexx mt9x9.rex || ( chmod +x mt9x9.rex ; ./mt9x9.rex )

loop i = 1 to 9 by 3
    loop j = 1 to 9
        loop k = i to i+2
            call charout, k"x"j"="format(k*j, 2)"09"x
        end
        say
    end
    say
end

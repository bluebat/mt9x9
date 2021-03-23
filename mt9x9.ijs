#!/usr/bin/ijconsole
NB. 9x9 multiplication table in J
NB. CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
NB. ./mt9x9.ijs || ijconsole mt9x9.ijs

3 : 0 ''
    for_i. 1 + 3 * i. 3 do.
        for_j. 1 + i. 9 do.
            s =: ''
            for_k. i + i. 3 do.
                s =: s, (":k), 'x', (":j), '=', (>'2.0' 8!:0 k*j), TAB
            end.
            smoutput s
        end.
        smoutput ''
    end.
)
exit 0

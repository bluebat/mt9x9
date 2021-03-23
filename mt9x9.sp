#!/usr/bin/spar
-- 9x9 multiplication table in AdaScript
-- CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
-- ./mt9x9.sp || spar mt9x9.sp

procedure mt9x9 is
begin
    i := 1;
    while i <= 9 loop
        for j in 1..9 loop
            for k in i..i+2 loop
                put(k, "9");
                put("x");
                put(j, "9");
                put("=");
                put(k*j, "Z9");
                put(ASCII.HT);
            end loop;
            put_line("");
        end loop;
        new_line;
        i := @ + 3;
    end loop;
end mt9x9;

-- 9x9 multiplication table in Ada
-- CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
-- gnat make mt9x9.adb && ./mt9x9

with Ada.Text_IO; use Ada.Text_IO;
procedure mt9x9 is
    package IO is new Integer_IO (Integer); use IO;
    V : array (1..3) of Integer := (1, 4, 7);
begin
    for i of V loop
        for j in 1..9 loop
            for k in i..i+2 loop
                Put (k, Width => 1); Put ("x"); Put (j, Width => 1);
                Put ("="); Put (k*j, Width => 2); Put (ASCII.HT);
            end loop;
            Put_Line ("");
        end loop;
        New_Line;
    end loop;
end mt9x9;

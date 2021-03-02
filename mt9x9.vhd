-- 9x9 multiplication table in VHDL
-- CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
-- ghdl -c mt9x9.vhd -e mt9x9 && ./mt9x9

LIBRARY std;
USE std.TEXTIO.all;
entity mt9x9 is
end mt9x9;
architecture mt9x9 of mt9x9 is
begin
    process
        variable i, j, k: integer;
        variable s: line;
    begin
        for i in 1 to 9 loop
            next when i mod 3 /= 1;
            for j in 1 to 9 loop
                for k in i to i+2 loop
                    write(s, k);
                    write(s, 'x');
                    write(s, j);
                    write(s, '=');
                    write(s, k*j, right, 2);
                    write(s, character'val(9));
                end loop;
                writeline(OUTPUT, s);
            end loop;
            write(s, character'val(0));
            writeline(OUTPUT, s);
        end loop;
        wait;
    end process;
end mt9x9;

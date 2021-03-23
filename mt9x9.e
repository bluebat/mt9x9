-- 9x9 multiplication table in Eiffel
-- CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
-- se c mt9x9.e -clean -o mt9x9 && ./mt9x9

class MT9X9
create {ANY}
    make
feature {ANY}
    make
        local i: INTEGER
        do
            from i := 1
            until i > 9
            loop
                block(i)
                print("%N")
                i := i + 3
            end
        end
    block (i: INTEGER)
        local j: INTEGER
        do
            from j := 1
            until j > 9
            loop
                line(i, j)
                io.put_new_line
                j := j + 1
            end
        end
    line (i, j: INTEGER)
        local k: INTEGER
        do
            from k := i
            until k > i+2
            loop
                io.put_string(k.out + "x" + j.out + "=")
                io.put_string(if k*j<10 then " " else "" end)
                io.put_string((k*j).out + "%T")
                k := k + 1
            end
        end
end

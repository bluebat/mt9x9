#!/usr/bin/lua
-- 9x9 multiplication table in Lua
-- CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
-- lua mt9x9.lua || ( chmod +x mt9x9.lua ; ./mt9x9.lua )

for i=1,9,3 do
    for j=1,9 do
        for k=i,i+2 do
            io.write(string.format('%dx%d=%2d\t', k, j, k*j))
        end
        print()
    end
    print()
end

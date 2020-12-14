#!/usr/bin/nit
# 9x9 multiplication table in Nit
# CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2020.
# nit mt9x9.nit || ( nitc mt9x9.nit ; ./mt9x9 )

for i in [1..10[.step(3) do
    for j in [1..9] do
        for k in [i, i+1, i+2] do
            if k*j < 10 then
                printn "{k}x{j}= {k*j}\t"
            else
                printn "{k}x{j}={k*j}\t"
            end
        end
        printn "\n"
    end
    print ""
end

#!/usr/bin/nit
# 9x9 multiplication table in Nit
# CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2020.
# nitc mt9x9.nit && ./mt9x9 || nit mt9x9.nit || ./mt9x9.nit

for i in [1..10[.step(3) do
    for j in [1..9] do
        for k in [i, i+1, i+2] do
            printn "{k}x{j}="
            if k*j < 10 then
                printn " "
            end
            printn "{k*j}\t"
        end
        printn "\n"
    end
    print ""
end

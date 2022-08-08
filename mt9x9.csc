#!/usr/bin/covs
# 9x9 multiplication table in Covariant Script
# CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2022.
# ./mt9x9.csc || covs mt9x9.csc

foreach i in {1, 4, 7}
    foreach j in range(1, 10)
        for k = i, k <= i+2, k++
            system.out.print(to_string(k)+"x"+to_string(j)+"=")
            system.out.print(k*j < 10 ? " " : "")
            system.out.print(to_string(k*j)+"\t")
        end
        system.out.print("\n")
    end
    system.out.println("")
end

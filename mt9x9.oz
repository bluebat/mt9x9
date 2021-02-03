/*
9x9 multiplication table in Oz
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
*/
% ozc -c mt9x9.oz && ozengine mt9x9.ozf

functor
import
    System
define
    for I in 1..9;3 do
        for J in 1..9 do
            for K in [I I+1 I+2] do
                {System.printInfo K#"x"#J#"="}
                if K*J < 10 then {System.printInfo " "} end
                {System.printInfo K*J#"\t"}
            end
            {System.printInfo "\n"}
        end
        {System.showInfo ""}
    end
end

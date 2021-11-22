module: mt9x9
synopsis: 9x9 multiplication table in Dylan
copyright: CC0
author: Wei-Lun Chao <bluebat@member.fsf.org>, 2021.

// make-dylan-app mt9x9; mv mt9x9.dylan mt9x9; cd mt9x9;
// dylan-compiler -build mt9x9.lid && _build/bin/mt9x9
for (i from 1 below 10 by 3)
    for (j from 1 to 9)
        for (k from i to i + 2)
            format-out("%dx%d=%2d\t", k, j, k * j);
        end;
        format-out("\n");
    end;
    format-out("\n");
end;

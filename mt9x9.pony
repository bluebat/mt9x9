/*
9x9 multiplication table in Pony
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2020.
*/
// ponyc -b mt9x9 && ./mt9x9

use "collections"
use "format"
actor Main
    new create(env: Env) =>
        for i in Range[U8](1, 10, 3) do
            for j in Range[U8](1, 10) do
                for k in [i; i+1; i+2].values() do
                    env.out.write(k.string() + "x" + j.string() + "=" +
                    Format.int[U8](k*j where width=2) + "\t")
                end
                env.out.write("\n")
            end
            env.out.print("")
        end

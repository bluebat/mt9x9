/*
9x9 multiplication table in Clean
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2023.
*/
// clm -nt mt9x9 -o mt9x9 && ./mt9x9

module mt9x9
import StdEnv
item j k = toString k +++ "x" +++ toString j +++ "=" +++ if (k*j < 10) " " "" +++ toString (k*j) +++ "\t"
line i j = map (item j) [i .. i+2] ++ ["\n"]
block i = flatten (map (line i) [1 .. 9]) ++ ["\n"]
Start = abort (foldr (+++) "" (flatten (map block [1, 4 .. 9])))

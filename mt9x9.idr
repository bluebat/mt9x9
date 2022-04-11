{-
9x9 multiplication table in Idris
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2022.
-}
-- idris mt9x9.idr -o mt9x9 && ./mt9x9

item : Nat -> Nat -> String
item j k = (show k)++"x"++(show j)++"="++(if k*j < 10 then " " else "")++(show (k*j))++" "
line : Nat -> Nat -> String
line i j = unwords $ map (item j) [(i)..(i+2)]
block : Nat -> String
block i = unlines $ map (line i) [1..9]
main : IO ()
main = putStr $ unlines $ map block [1, 4, 7]

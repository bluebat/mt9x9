{-# OPTIONS --guardedness #-}
{-
9x9 multiplication table in Agda
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2023.
-}
-- agda -i /usr/share/Agda-stdlib/src -c mt9x9.agda && ./mt9x9

module mt9x9 where
open import Data.Nat using (ℕ; _+_; _*_)
open import Data.Nat.Show using (show)
open import Data.String using (String; padLeft; _++_; concat)
open import Data.List using ([]; map; _∷_)
open import Text.Printf using (printf)
open import IO using (Main; run; putStr)
item : ℕ -> ℕ -> String
item j k = printf "%ux%u=%s\t" k j (padLeft ' ' 2 (show (k * j)))
line : ℕ -> ℕ -> String
line i j = concat (map (item j) (i ∷ (i + 1) ∷ (i + 2) ∷ [])) ++ "\n"
block : ℕ -> String
block i = concat (map (line i) (1 ∷ 2 ∷ 3 ∷ 4 ∷ 5 ∷ 6 ∷ 7 ∷ 8 ∷ 9 ∷ [])) ++ "\n"
main : Main
main = run (putStr (concat (map block (1 ∷ 4 ∷ 7 ∷ []))))

{-
9x9 multiplication table in Haskell
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2019.
-}
-- runghc mt9x9.hs || ( ghc mt9x9.hs ; ./mt9x9 )

import Control.Monad
main = do
    forM_ [1,4..9] $ \i -> do
        forM_ [1..9] $ \j -> do
            forM_ [i, i+1, i+2] $ \k -> do
                putStr (show k ++ "x" ++ show j ++ "=" ++
                    (if (k*j) < 10 then " " else "") ++
                    show (k*j) ++ "\t")
            putStrLn ""
        putChar '\n'

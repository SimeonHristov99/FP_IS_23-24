main :: IO()
main = do
    print $ fibRec 11 == 89
    -- print $ fibIter 11 == 89
    -- print $ fibIter 110 == 43566776258854844738105

fibRec :: Int -> Int
fibRec 0 = 0
fibRec 1 = 1
fibRec n = fibRec (n - 1) + fibRec (n - 2)

fibIter _ = 42 -- the wildcard operator

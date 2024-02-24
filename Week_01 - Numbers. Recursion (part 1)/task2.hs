main :: IO()
main = do
    print $ factRec 5 == 120
    print $ factRec 11 == 39916800
    print $ factIter 5 == 120

factIter :: Int -> Int
factIter n = helper n 1
 where
    helper :: Int -> Int -> Int
    helper 0 result = result
    helper leftover result = helper (leftover - 1) (result * leftover)

factRec :: Int -> Int
factRec 0 = 1
factRec n
 | n < 0 = error "n has to be non-negative"
 | otherwise = n * factRec (n - 1)

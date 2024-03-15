{-
Define the function sine, that
accepts a whole number and
a real number (representing radians)
and returns the `n`-th partial sum of `sin(x)`.

Reference the formula for writing `sin(x)`
around the origin:

show image in github

**Acceptance criteria:**

1. All tests pass.
-}

main :: IO()
main = do
    print $ mySin 10 1 == 0.8414709848078965 -- n = 100, x = 1
    print $ mySin 15 0.5 == 0.479425538604203 -- n = 100, x = 1
    -- print $ mySin 100 1 -- == 0.8414709848078965 -- n = 100, x = 1
    -- print $ mySin 100 0.5 -- == 0.479425538604203

factIter :: Int -> Int
factIter n = helper n 1
 where
    helper :: Int -> Int -> Int
    helper 0 result = result
    helper leftover result = helper (leftover - 1) (result * leftover)

mySin :: Int -> Double -> Double
mySin 0 x = x
mySin n x = ((-1)^n * x**(fromIntegral $ 2 * n + 1)) / (fromIntegral $ factIter $ 2 * n + 1) + mySin (n - 1) x

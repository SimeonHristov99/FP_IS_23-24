{-
Define a function that accepts two whole
numbers `x` and `n`
and calculates the following sum:

1 + x + x^2 + x^3 + ... + x^n

**Acceptance criteria:**

1. All tests pass.
2. A linearly iterative process is implemented.
-}

main :: IO()
main = do
    print $ calculateSum 5 0 == 1
    print $ calculateSum 5 1 == 6
    print $ calculateSum 10 1 == 11
    print $ calculateSum 1 11 == 12
    print $ calculateSum 2 11 == 4095

calculateSum :: Int -> Int -> Int
calculateSum x n = helper n 0
 where
    helper :: Int -> Int -> Int
    helper 0 result = result + 1
    helper leftoverPower result = helper (leftoverPower - 1) (result + x^leftoverPower)

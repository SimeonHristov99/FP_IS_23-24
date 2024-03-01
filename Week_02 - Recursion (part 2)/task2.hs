{-
Define a recursive function for calculating
the sum of the digits of a whole number.

**Acceptance criteria:**

1. All tests pass.
-}

main :: IO()
main = do
    print $ sumDigitsRec 12345 == 15
    print $ sumDigitsRec 123 == 6

    print $ sumDigitsLinRec 12345 == 15
    print $ sumDigitsLinRec 123 == 6

sumDigitsLinRec :: Int -> Int
sumDigitsLinRec 0 = 0
sumDigitsLinRec n = mod n 10 + (sumDigitsLinRec $ div n 10)

sumDigitsRec :: Int -> Int
sumDigitsRec n = helper n 0
 where
    helper :: Int -> Int -> Int
    helper 0 result = result
    helper leftover result = helper (div leftover 10) (result + mod leftover 10)

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



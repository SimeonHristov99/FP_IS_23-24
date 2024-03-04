{-
Write a function that finds the maximum digit in a number.

**Acceptance criteria:**

1. All tests pass.
-}

main :: IO()
main = do
    print $ findMax 55345 == 5
    print $ findMax 14752 == 7
    print $ findMax 329450 == 9
    print $ findMax 9521 == 9



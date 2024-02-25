{-
A number - `n`, is perfect if and only if it is natural
and equal to the sum of its divisors that are less than `n`.
Define a predicate that checks whether a number is perfect.

**Acceptance criteria:**

1. All tests pass.
-}

main :: IO()
main = do
    print $ isPerfect 1 == False
    print $ isPerfect 6 == True -- 1 + 2 + 3 = 6 = 6
    print $ isPerfect 495 == False
    print $ isPerfect 33550336 == True



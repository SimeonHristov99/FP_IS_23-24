{-
Write functions that return the number of elements in a list.

**Acceptance criteria:**

1. All tests pass.
2. `myLengthRecNonPM` implements a linearly recursive process without pattern matching.
3. `myLengthRecPM` implements a linearly recursive process with pattern matching.
4. `myLengthFunc` uses built-in functions.
-}

main :: IO()
main = do
    print $ myLengthRecNonPM [] == 0
    print $ myLengthRecNonPM [1, 2, 3] == 3

    print $ myLengthRecPM [] == 0
    print $ myLengthRecPM [1, 2, 3] == 3

    print $ myLengthFunc [] == 0
    print $ myLengthFunc [1, 2, 3] == 3



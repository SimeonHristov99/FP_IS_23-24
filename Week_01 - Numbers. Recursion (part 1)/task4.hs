{-
Define the following functions:

- `areNotEqualOneLine`, `areNotEqualGuards`:
    return whether two floating point numbers are different from each other;
- `inside`:
    returns whether a whole number `x` is between
    two whole numbers - `start` and `finish`.

**Acceptance criteria:**

1. All tests pass.
2. `areNotEqualOneLine` is defined on a single line.
3. `areNotEqualOneLine` is defined **without** the use of `if-else`.
4. `areNotEqualGuards` is defined using guards.
5. `inside` is defined on a single line.
6. `inside` is defined **without** the use of `if-else`.
-}

main :: IO()
main = do
    print $ areNotEqualOneLine 5 2 == True
    print $ areNotEqualOneLine 5 5 == False

    print $ areNotEqualGuards 5 2 == True
    print $ areNotEqualGuards 5 5 == False

    print $ inside 1 5 4 == True -- start = 1, finish = 5, x = 4
    print $ inside 5 1 4 == True
    print $ inside 10 50 20 == True
    print $ inside 10 50 1 == False



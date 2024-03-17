{-
Define a function that takes two parameters `k` and `l` and returns
the tuple `(x, y)` where `x` is the whole part of the division
between `k` and `l` and `y` is the remainder of the division.

**Acceptance criteria:**

1. All tests pass.
2. Initially use `Int`, but then transition to a new type called `Point`.
3. `divideNonPM` is defined without pattern matching.
4. `dividePM` is defined using pattern matching.
5. Appropriate tests are added for solving using a lambda function.
-}

main :: IO()
main = do
    print $ divideNonPM (10, 5) == (2, 0)
    print $ divideNonPM (5, 10) == (0, 5)

    print $ dividePM (10, 5) == (2, 0) -- 10 / 5 = 2 and 10 % 5 = 0
    print $ dividePM (5, 10) == (0, 5) -- 5 / 10 = 0 and 5 % 10 = 5

    -- lambda test case



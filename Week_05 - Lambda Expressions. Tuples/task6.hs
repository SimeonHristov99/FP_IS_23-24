{-
Define the `Rat` data type that is the tuple `(x, y)` where `x` is
the numerator and `y` - the denominator of a rational number.
Define a function called `normalize` which will simplify the
numerator and denominator (so that their highest common denominator is `1`).

**Acceptance criteria:**

1. All tests pass.
2. Polymorphic typeclasses are used.
-}

main :: IO()
main = do
    print $ normalize (4, 2) == (2, 1)
    print $ normalize (8, 4) == (2, 1)
    print $ normalize (2, 4) == (1, 2)

    print $ normalizeUsingLet (4, 2) == (2, 1)
    print $ normalizeUsingLet (8, 4) == (2, 1)
    print $ normalizeUsingLet (2, 4) == (1, 2)



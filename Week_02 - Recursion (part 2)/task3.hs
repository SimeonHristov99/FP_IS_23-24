{-
Define a recursive and an iterative function for calculating
`x` to the power of `n`, where `x` is a floating-point number
and `n` is a natural number.

**Acceptance criteria:**

1. All tests pass.
2. `powRec` implements a linearly recursive process.
3. `powIter` implements a linearly iterative process.
-}

main :: IO()
main = do
    print $ powRec 2 5 == 32
    print $ powRec 15 3 == 3375

    print $ powIter 2 5 == 32
    print $ powIter 15 3 == 3375



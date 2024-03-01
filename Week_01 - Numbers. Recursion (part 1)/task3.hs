{-
The first few numbers of the Fibonacci sequence are:
`0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144 ...` and so on.
Define two functions `fibRec` and `fibIter`
that return the number at the `i`th index.

**Acceptance criteria:**

1. All tests pass.
2. Parameter validation is performed.
3. `fibRec` creates a linearly recursive process.
4. `fibIter` creates a linearly iterative process.
5. Explain the wildcard symbol (`_`).
6. Explain pattern matching.
-}

main :: IO()
main = do
    print $ fibRec 11 == 89
    print $ fibIter 11 == 89
    print $ fibIter 110 == 43566776258854844738105

fibRec :: Int -> Int
fibRec 0 = 0
fibRec 1 = 1
fibRec n = fibRec (n - 1) + fibRec (n - 2)

fibIter :: Integer -> Integer
fibIter n = helper 0 1 n
 where
    helper :: Integer -> Integer -> Integer -> Integer
    helper n0 _ 0 = n0
    helper _ n1 1 = n1
    helper n0 n1 leftover = helper n1 (n0 + n1) (leftover - 1)

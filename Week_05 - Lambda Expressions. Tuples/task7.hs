{-
Define a function that accepts two numbers - `s` and `f` (`s < f`) and 
step `k` and returns a list of tuples `(x, y)` where `y` is the square
of `x` and `x` goes from `s` to `f` with a step `k`.

**Acceptance criteria:**

1. All tests pass.
-}

main :: IO()
main = do
    print $ getSquares 0 100 10 == [(0, 0), (10, 100), (20, 400), (30, 900), (40, 1600), (50, 2500), (60, 3600), (70, 4900), (80, 6400), (90, 8100), (100, 10000)]

getSquares :: Int -> Int -> Int -> [(Int, Int)]
getSquares s f k = [(x, x * x) | x <- [s, s + k .. f]]

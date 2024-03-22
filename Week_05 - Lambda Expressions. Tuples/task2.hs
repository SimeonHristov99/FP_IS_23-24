{-
Define a function that accepts an unary function - `f`,
and returns a lambda of two real numbers - `x`, `y`,
and subtracts `f(x)` from `f(y)`.

**Acceptance criteria:**

1. All tests pass.
2. Initially use `Double`, but then transition to all number types.
3. The solution is written on a single line of code.
-}

main :: IO()
main = do
    print $ (difference (\x -> 2 * x)) 15.16 15.20 == 7.99999999999983e-2
    print $ (difference (\x -> 2 * x)) 8.5 8 == -1.0

difference :: (Num a) => (a -> a) -> (a -> a -> a)
difference f = (\ x y -> f y - f x)

{-
Define a function that accepts a unary function `f`
and a number `y`
and returns a unary function that for every `x` returns:

- `y`, if it is greater than or equal to the result of applying `f` to `x`;
- the result of applying `f` to `x`, otherwise.

**Acceptance criteria:**

1. All tests pass.
2. The solution is written on a single line of code.

**Test cases:**

Using the below descriptions, create test cases.

If g is upperBound (*2) 100
    then g 50 -> 100
If g is upperBound (*2) 100.236
    then g 500.002 -> 1000.004
If g is upperBound (\x -> x) 1.001
    then g 1.001 -> 1.001
-}

main :: IO()
main = do
    print $ (upperBound (*2) 100) 50 == 100
    print $ (upperBound (*2) 100.236) 500.002 == 1000.004
    print $ (upperBound (\x -> x) 1.001) 1.001 == 1.001

upperBound :: (Double -> Double) -> Double -> (Double -> Double)
upperBound f y = (\ x -> max y (f x))

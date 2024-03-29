-- Task 1: Recursion.
-- Task 2: HOF + Lambda.
-- Task 3: Lists.
-- Task 4: Lists + Tuples.

{-
Define a function that accepts a unary function and a list of numbers
[y<sub>1</sub>, y<sub>2</sub> .. y<sub>n</sub>]
and returns a function that for every `x` calculates
the expression:
f(y<sub>1</sub>x) + 2 f(y<sub>2</sub>x) + .. + n f(y<sub>n</sub>x).

**Acceptance criteria:**

1. All tests pass.
2. The task is solved on a single line of code.
3. Typeclasses are used.

**Test cases:**

If g is myPolynomial (\x -> x - 2) [],
    then g 5 -> 0
If g is myPolynomial (\x -> x + 10) [3.62, 6.12, 9.45, 8.02, 5, 2],
    then g (-5) -> -356.45
If g is myPolynomial (\x -> x - 2) [1, 4, 7, 8, 5, 2],
    then g 5 -> 453
-}

main :: IO()
main = do
    print $ (myPolynomial (\x -> x - 2) []) 5 == 0
    print $ (myPolynomial (\x -> x + 10) [3.62, 6.12, 9.45, 8.02, 5, 2]) (-5) == -356.45
    print $ (myPolynomial (\x -> x - 2) [1, 4, 7, 8, 5, 2]) 5 == 453

myPolynomial :: (Enum a, Num a) => (a -> a) -> [a] -> (a -> a)
myPolynomial f ys = (\ x -> sum $ map (\ (y, pos) -> pos * (f $ y * x)) $ zip ys [1 .. ])

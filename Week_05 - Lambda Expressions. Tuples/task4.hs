{-
Define a function that outputs
the sum of the tuple `(x1, x2)`.

**Acceptance criteria:**

1. All tests pass.
2. `sumTupleNonPM` is defined without pattern matching.
3. `sumTuplePM` is defined using pattern matching.
4. Appropriate tests are added for solving using a lambda function.
-}

main :: IO()
main = do
    print $ sumTupleNonPM (4, 5) == 9
    print $ sumTupleNonPM (-5, 5) == 0

    print $ sumTuplePM (4, 5) == 9
    print $ sumTuplePM (-5, 5) == 0

    -- lambda test cases
    print $ (\ (x, y) -> x + y) (4, 5) == 9
    print $ (\ (x, y) -> x + y) (-5, 5) == 0

sumTuplePM :: (Int, Int) -> Int
sumTuplePM (x, y) = x + y

sumTupleNonPM :: (Int, Int) -> Int
sumTupleNonPM pair = fst pair + snd pair

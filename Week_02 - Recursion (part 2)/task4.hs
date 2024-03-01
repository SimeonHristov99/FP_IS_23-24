{-
A prime number is a natural number greater than `1` that is
not a product of two smaller natural numbers.
Define a predicate that checks whether
a number is a prime number.

**Acceptance criteria:**

1. All tests pass.
-}

main :: IO()
main = do
    print $ isPrime 1 == False
    print $ isPrime 2 == True
    print $ isPrime 3 == True
    print $ isPrime 6 == False
    print $ isPrime 61 == True

isPrime :: Int -> Bool
isPrime n = n > 1 && helper 2
 where
    helper divisor
     | divisor >= n = True
     | mod n divisor == 0 = False
     | otherwise = helper $ divisor + 1

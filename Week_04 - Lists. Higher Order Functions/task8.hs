{-
Define functions that:

- Reverse a number;
- Calculate the factorial of a number;
- Check whether a number is prime;
- Returns the sum of the digits of a number;
- Find the sum of the divisors of a number.

**Acceptance criteria:**

1. All tests pass.
2. Every definition is done on a single line.
-}

import Data.Char

main :: IO()
main = do
    print $ rev 123 == 321

    print $ fact 5 == 120

    print $ isPrime 1 == False
    print $ isPrime 2 == True
    print $ isPrime 5 == True
    print $ isPrime 6 == False
    print $ isPrime 11 == True
    print $ isPrime 13 == True

    -- print $ sumDig 142500 == 12

    -- print $ sumDivs 161 == 192

rev :: Int -> Int
rev = read . reverse . show

fact :: Int -> Int
fact n = product [1 .. n]

isPrime :: Int -> Bool
isPrime n = [1, n] == filter (\ d -> mod n d == 0) [1 .. n]



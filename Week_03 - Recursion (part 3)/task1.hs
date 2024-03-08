{-
A narcissistic number is a number which
is the sum of its own digits,
each raised to the power of the number of
digits. Define a predicate that checks
whether a given whole number
is a narcissistic number.

**Acceptance criteria:**

1. All tests pass.
2. Only linearly recursive procedures are used.

Take 153 (3 digits):

1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153

and 1634 (4 digits):

1^4 + 6^4 + 3^4 + 4^4 = 1 + 1296 + 81 + 256 = 1634
-}

main :: IO()
main = do
    print $ countDigits 100 == 3
    print $ countDigits 42 == 2
    print $ sumDigitsWithPower 153 3 == 153
    print $ sumDigitsWithPower 1634 4 == 153
    print $ isNarcissistic 7 == True
    print $ isNarcissistic 12 == False
    print $ isNarcissistic 370 == True
    print $ isNarcissistic 371 == True
    print $ isNarcissistic 1634 == True

isNarcissistic :: Int -> Bool
isNarcissistic n = n == sumDigitsWithPower n (countDigits n)

sumDigitsWithPower :: Int -> Int -> Int
sumDigitsWithPower n power
 | n < 10 = n^power
 | otherwise = (mod n 10)^power + sumDigitsWithPower (div n 10) power

countDigits :: Int -> Int
countDigits n
 | n < 10 = 1
 | otherwise = 1 + countDigits (div n 10)

{-
Define a predicate that checks whether
the digits of a non-negative whole number
are ordered in an ascending order.

**Acceptance criteria:**

1. All tests pass.
2. The solution does not explicitly return `True` or `False`.
-}

main :: IO()
main = do
    print $ hasIncDigits 1244 == True
    print $ hasIncDigits 12443 == False

    print $ hasIncDigitsOneLine 1244 == True
    print $ hasIncDigitsOneLine 12443 == False

hasIncDigitsOneLine :: Int -> Bool
hasIncDigitsOneLine n = n < 10 || mod n 10 >= mod (div n 10) 10
                            && hasIncDigitsOneLine (div n 10)

hasIncDigits :: Int -> Bool
hasIncDigits n
 | n < 10 = True
 | mod n 10 < mod (div n 10) 10 = False
 | otherwise = hasIncDigits $ div n 10

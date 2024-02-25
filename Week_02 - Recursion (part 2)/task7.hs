{-
Define a predicate that checks whether the digits of a non-negative whole number are ordered in an ascending order.

**Acceptance criteria:**

1. All tests pass.
2. The solution does not explicitly return `True` or `False`.
-}

main :: IO()
main = do
    print $ hasIncDigits 1244 == True
    print $ hasIncDigits 12443 == False



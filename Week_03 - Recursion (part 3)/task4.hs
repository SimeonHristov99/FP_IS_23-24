{-
Define a function `sumNumbers start finish` that
returns the sum of all numbers in the interval `[start, finish]`
whose digits are ordered in descending order.

**Acceptance criteria:**

1. All tests pass.
2. Implement a linearly recursive process.
-}

main :: IO()
main = do
    print $ sumNumbers 1 9 == 45
    print $ sumNumbers 199 203 == 200
    print $ sumNumbers 219 225 == 663
    print $ sumNumbers 225 219 == 663



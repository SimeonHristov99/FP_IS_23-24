{-
Define a function `sumNumbers start finish`
that returns the sum of all numbers
in the interval `[start, finish]`
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
    print $ isDescendingOneLine 1234 == False
    print $ isDescendingOneLine 100

sumNumbers :: Int -> Int -> Int
sumNumbers start finish = helper (min start finish) (max start finish)
 where
    helper :: Int -> Int -> Int
    helper realStart realFinish
     | realStart > realFinish = 0
     | isDescendingOneLine realStart = realStart + helper (realStart + 1) realFinish 
     | otherwise = helper (realStart + 1) realFinish

isDescendingOneLine :: Int -> Bool
isDescendingOneLine n = n < 10 || 
    mod n 10 <= mod (div n 10) 10 && (isDescendingOneLine $ div n 10)

isDescendingGuards :: Int -> Bool
isDescendingGuards n
 | n < 10 = True
 | mod n 10 > mod (div n 10) 10 = False
 | otherwise = isDescendingGuards $ div n 10

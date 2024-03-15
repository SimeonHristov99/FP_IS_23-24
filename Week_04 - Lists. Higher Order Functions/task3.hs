{-
Write a function that generates a list with the numbers in the interval `[x, y]`.

**Acceptance criteria:**

1. All tests pass.
2. `getClosedIntervalRec` is defined using recursion.
3. `getClosedIntervalOneLine` is defined on a single line.
-}

main :: IO()
main = do
    print $ getClosedIntervalRec 1 9 == [1, 2, 3, 4, 5, 6, 7, 8, 9]
    print $ getClosedIntervalRec 9 1 == [1, 2, 3, 4, 5, 6, 7, 8, 9]

    print $ getClosedIntervalOneLine 1 9 -- == [1, 2, 3, 4, 5, 6, 7, 8, 9]
    print $ getClosedIntervalOneLine 9 1 -- == [1, 2, 3, 4, 5, 6, 7, 8, 9]

getClosedIntervalOneLine :: Int -> Int -> [Int]
getClosedIntervalOneLine x y = [min x y .. max x y]

getClosedIntervalRec :: Int -> Int -> [Int]
getClosedIntervalRec x y = helper (min x y) (max x y)
 where
    helper :: Int -> Int -> [Int]
    helper realStart realEnd
     | realStart > realEnd = []
     | otherwise = realStart : helper (realStart + 1) realEnd

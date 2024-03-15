{-
Write a function that removes the first element in a list that is equal to `x`
by going from left to right.

**Acceptance criteria:**

1. All tests pass.
-}

main :: IO()
main = do
    print $ removeFirst 5 [5, 1, 5, 3, 5] == [1, 5, 3, 5]
    print $ removeFirst 3 [5, 1, 5, 3, 5] == [5, 1, 5, 5]

removeFirst :: Int -> [Int] -> [Int]
removeFirst _ [] = []
removeFirst n (x:xs)
 | n == x = xs
 | otherwise = x : removeFirst n xs

{-
Write a function that removes every element equal to `x` in a list.

**Acceptance criteria:**

1. All tests pass.
2. `removeAllRec` is defined using recursion.
3. `removeAllHOF` is defined using higher order functions.
-}

main :: IO()
main = do
    print $ removeAllRec 5 [5] == []
    print $ removeAllRec 4 [4, 4] == []
    print $ removeAllRec 5 [1] == [1]
    print $ removeAllRec 5 [5, 1, 5, 3, 5] == [1, 3]
    print $ removeAllRec 3 [5, 1, 5, 3, 5] == [5, 1, 5, 5]

    print $ removeAllHOF 5 [5] == []
    print $ removeAllHOF 4 [4, 4] == []
    print $ removeAllHOF 5 [1] == [1]
    print $ removeAllHOF 5 [5, 1, 5, 3, 5] == [1, 3]
    print $ removeAllHOF 3 [5, 1, 5, 3, 5] == [5, 1, 5, 5]

removeAllHOF :: Int -> [Int] -> [Int]
removeAllHOF n = filter (/= n)
-- removeAllHOF n xs = filter (\ x -> x /= n) xs
-- removeAllHOF n xs = filter (\ x -> not $ x == n) xs

removeAllRec :: Int -> [Int] -> [Int]
removeAllRec _ [] = []
removeAllRec n (x:xs)
 | n == x = removeAllRec n xs
 | otherwise = x : removeAllRec n xs

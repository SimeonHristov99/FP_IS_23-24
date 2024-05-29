-- Exam 2
-- Task 1: fold
-- Task 2: lists
-- Task 3: trees (inspired by Stefcho!)
-- Task 4: lists of algebraic data types

-- foldr (+) 0 [1,2,3]
-- r => right-most => 3
-- 1 + (2 + (3 + 0))

main :: IO()
main = do
    print $ prodOdds [1,2,3,4,5,6] == 48
    print $ prodOdds [7.66,7,7.99,7] == 49.0

prodOdds :: Num a => [a] -> a
prodOdds = foldr (\ (idx, n) acc -> if even idx then acc else acc*n ) 1 . zip [0 ..]
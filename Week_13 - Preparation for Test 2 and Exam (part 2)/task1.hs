main :: IO()
main = do
    print $ prodEvens [1,2,3,4,5,6] == 48
    print $ prodEvens [7.66,7,7.99,7] == 49.0

prodEvens :: (Num a) => [a] -> a
prodEvens = foldr (\ (idx, n) acc -> if odd idx then acc * n else acc) 1 . zip [0 .. ]

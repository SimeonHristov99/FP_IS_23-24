main :: IO()
main = do
    print $ intersectionPoints (\ x -> x) (\x -> x * x) (-5) 5 == [0, 1]
    print $ intersectionPoints (\ x -> x) (\x -> x * x + 1) (-5) 5 == []

intersectionPoints :: (Int -> Int) -> (Int -> Int) -> Int -> Int -> [Int]
intersectionPoints f g start end = [f x | x <- [start .. end], f x == g x]

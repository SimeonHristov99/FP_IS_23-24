main :: IO()
main = do
    print $ intersectionPoints (\ x -> x) (\x -> x * x) (-5) 5 == [0, 1]
    print $ intersectionPoints (\ x -> x) (\x -> x * x + 1) (-5) 5 == []



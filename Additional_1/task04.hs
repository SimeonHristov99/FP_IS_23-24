main :: IO()
main = do
    print $ prefixToSuffix [] == []
    print $ prefixToSuffix [0] == [0]
    print $ prefixToSuffix [1, 3, 6, 10, 15] == [15, 14, 12, 9, 5]
    print $ prefixToSuffix [1, 3, 6, 10, 15] == [15, 14, 12, 9, 5]
    print $ prefixToSuffix [-1, -2, -3, -4, -5] == [-5, -4, -3, -2, -1]
    print $ prefixToSuffix [1, -4, 2, 90, 100, -1] == [-1, -2, 3, -3, -91, -101]
    print $ prefixToSuffix [1, 0, 1, 0, 1, 0, 1, 0] == [0, -1, 0, -1, 0, -1, 0, -1]
    print $ prefixToSuffix [0, 0, 0, 0, 0, 0, 0, 0, 0, 1] == [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    print $ prefixToSuffix [0, 0, 0, 0, 0, 0, 1, 1, 1, 1] == [1, 1, 1, 1, 1, 1, 1, 0, 0, 0]

prefixToSuffix :: [Int] -> [Int]
prefixToSuffix [] = []
prefixToSuffix (x:xs) = suffixSum $ x : getA (x:xs)

suffixSum :: [Int] -> [Int]
suffixSum [] = []
suffixSum (x:xs) = sum (x:xs) : suffixSum xs

getA :: [Int] -> [Int]
getA [] = []
getA [x] = []
getA (x:y:xs) = (y - x) : getA (y:xs) 

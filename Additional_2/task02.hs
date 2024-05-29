import Data.Char
main :: IO()
main = do
    print $ f 10
    print $ solve ["abode","ABc","xyzD"] == [4,3,1]
    print $ solve ["abide","ABc","xyz"] == [4,3,0]
    print $ solve ["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"] == [6,5,7]
    print $ solve ["encode","abc","xyzD","ABmD"] == [1, 3, 1, 3]

-- f = (-5)
-- f = (+) 5
-- f x = x `div` 10

solve :: [String] -> [Int]
solve = map (length . filter (\ (x, y) -> x == y) . zip ['a' .. 'z'] . map toLower)

--zip "abode" ['a' .. 'z'] -> [('a','a')..]

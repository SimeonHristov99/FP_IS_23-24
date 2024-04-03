import Data.List

main :: IO()
main = do
    print $ (aroundFib 100) 25 == [('1',3)]
    print $ (aroundFib 180) 25 == [('1',5),('7',3)]
    print $ (aroundFib 1700) 25 == [('1',4),('2',5),('0',6),('4',5),('5',7),('2',4),('6',7),('3',5),('0',4),('8',5),('4',5),('4',4),('7',7),('7',6),('2',2)]
    print $ (aroundFib 500) 42 == [('0',6),('2',7),('2',6)]
    print $ (aroundFib 6000) 242 == [('5',31),('8',33),('8',31),('7',35),('7',31),('4',7)]

fibIter :: Integer -> Integer
fibIter n = helper 0 1 n
 where
    helper :: Integer -> Integer -> Integer -> Integer
    helper n0 _ 0 = n0
    helper n0 n1 1 = n1
    helper n0 n1 leftover = helper n1 (n0 + n1) (leftover - 1)
--123612736 -> "123612736",3 -> ["123","612","736"]
divByK :: Int -> String -> [String]
divByK k xs
 |length xs < k = [xs]
 |otherwise = take k xs : divByK k (drop k xs)

countOccur :: String -> [(Char, Int)]
countOccur = map (\ gr -> (head gr, length gr)) . group . sort 

getMaxPair :: String -> (Char,Int)
getMaxPair xs = head
    $ filter (\ (ch, len)-> maxFreq == len)
    $ countOccur xs
 where
    maxFreq = maximum $ map snd $ countOccur xs

aroundFib :: Integer -> (Int -> [(Char, Int)])
aroundFib n = (\ k -> map getMaxPair $ divByK k $ show $ fibIter n)

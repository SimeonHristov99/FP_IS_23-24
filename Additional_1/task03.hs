import Data.List
main :: IO()
main = do
    print $ numContentChildren [1, 2, 3] [1, 1] == 1
    print $ numContentChildren [1, 2] [1, 2, 3] == 2
    print $ numContentChildren [3,3,3,3,3,3,3] [17] == 1
    print $ numContentChildren [22, 1, 211] [17, 24, 3, 332] == 3

numContentChildren :: [Int] -> [Int] -> Int
numContentChildren gs ss = helper (sort gs) (sort ss)
 where
    helper _ [] = 0
    helper [] _ = 0
    helper children@(g:gs1) (s:ss1) 
     | g <= s = 1 + helper gs1 ss1
     | otherwise = helper children ss1



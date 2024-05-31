import Data.List

main :: IO()
main = do
    print $ groupEquals ["eat","tea","tan","ate","nat","bat"] == [["bat"],["eat","tea","ate"],["tan","nat"]]
    print $ groupEquals [""] == [[""]]
    print $ groupEquals ["a"] == [["a"]]
    
    print $ groupEquals' ["eat","tea","tan","ate","nat","bat"] == [["bat"],["eat","tea","ate"],["tan","nat"]]
    print $ groupEquals' [""] == [[""]]
    print $ groupEquals' ["a"] == [["a"]]

groupEquals' :: [String] -> [[String]]
groupEquals' ss = map (map ((ss!!) . snd))
    $ groupBy (\ (s1, _) (s2, _) -> s1 == s2)
    $ sort $ zip (map sort ss) [0 .. ]

groupEquals :: [String] -> [[String]]
groupEquals ss = [[ss!!idx | (_, idx) <- gr] | gr <- grouped]
 where
    grouped = groupBy (\ (s1, _) (s2, _) -> s1 == s2)
        $ sort
        $ zip (map sort ss) [0 .. ]

{-
groupEquals :: [String] -> [[String]]
groupEquals strs = groupBy (\x y -> (sort x == sort y)) (sortBy (compare `on` sort) strs)

isAnagram :: String -> String -> Bool
isAnagram str1 str2 = sort str1 == sort str2
-}

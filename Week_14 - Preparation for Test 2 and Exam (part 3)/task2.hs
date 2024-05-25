main :: IO()
main = do
    print $ groupEquals ["eat","tea","tan","ate","nat","bat"] == [["bat"],["eat","tea","ate"],["tan","nat"]]
    print $ groupEquals [""] == [[""]]
    print $ groupEquals ["a"] == [["a"]]
    


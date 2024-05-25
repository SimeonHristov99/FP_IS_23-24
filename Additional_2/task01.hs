main :: IO()
main = do
    print $ prodEvens [1,2,3,4,5,6] == 48
    print $ prodEvens [7.66,7,7.99,7] == 49.0



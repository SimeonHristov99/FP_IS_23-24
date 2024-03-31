main :: IO()
main = do
    print $ numContentChildren [1, 2, 3] [1, 1] == 1
    print $ numContentChildren [1, 2] [1, 2, 3] == 2
    print $ numContentChildren [3,3,3,3,3,3,3] [17] == 1
    print $ numContentChildren [22, 1, 211] [17, 24, 3, 332] == 3



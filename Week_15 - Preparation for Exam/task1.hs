main :: IO()
main = do
    print $ findMinMaxProduct [1, -2, -3, 4, 6, 7] 1 == (-3,7)
    print $ findMinMaxProduct [1, -2, -3, 4, 6, 7] 2 == (-21,42)
    print $ findMinMaxProduct [1, -2, -3, 4, 6, 7] 3 == (-126,168)
    print $ findMinMaxProduct [0, 6, 3, 5, 4]      4 == (0, 360)
    print $ findMinMaxProduct [5, 4, 3, 3, 6]      2 == (9, 30)
    print $ findMinMaxProduct [-4, -10, -1]        2 == (4, 40)



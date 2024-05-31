main :: IO()
main = do
    print $ fn (== 5) == [[0,2,3,4],[0,6,7,8],[0,10,11,12]]
    print $ fn (>= 11) == [[1,2,0,0],[5,6,0,0],[9,10,0,0]]
    print $ fn (> 20) == [[1,2,3,4],[5,6,7,8],[9,10,11,12]]

fn = resetMatrix [[1,2,3,4],[5,6,7,8],[9,10,11,12]]

transpose :: [[Int]] -> [[Int]]
transpose xss
 | all null xss = []
 | otherwise = map head xss : transpose (map tail xss)

resetMatrix :: [[Int]] -> ((Int-> Bool) -> [[Int]])
resetMatrix mat = (\ p ->
    transpose
        $ map (\ xs -> if any p xs then replicate (length xs) 0 else xs)
        $ transpose mat)

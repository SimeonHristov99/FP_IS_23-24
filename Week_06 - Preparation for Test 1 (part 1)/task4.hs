-- refer to readme

import Data.List

main :: IO()
main = do
    print $ isIn (0, 0) (1, 1) 2 -- True
    print $ isIn (0, 0) (10, 10) 2 -- False

    print $ partition even [1 .. 10]

    print $ splitPoints (1, 1) 5 [(1, 2), (2, 3), (10, 15), (-1, 1), (12, 14)] == ([(1.0, 2.0), (2.0, 3.0), (-1.0, 1.0)], [(10.0, 15.0), (12.0, 14.0)])
    print $ splitPoints (10, 10) 5 [(1, 2), (2, 3), (10, 15), (-1, 1), (12, 14)] == ([(10.0, 15.0), (12.0, 14.0)], [(1.0, 2.0), (2.0, 3.0), (-1.0, 1.0)])
    print $ splitPoints (0, 0) 2 [(0, 0), (1, 1), (2, 2), (0, 2)] == ([(0.0,0.0),(1.0,1.0),(0.0,2.0)],[(2.0,2.0)])
    -- print $ splitPoints (0, 0) (-1) [(0, 0), (1, 1), (2, 2), (0, 2)] -- Should give an error

type Point = (Double, Double)

isIn :: Point -> Point -> Double -> Bool
isIn (cX, cY) (x, y) r = (cX - x)**2 + (cY - y)**2 <= r**2

splitPoints :: Point -> Double -> [Point] -> ([Point], [Point])
splitPoints center@(cX, cY) r ps
 | r <= 0 = error "r has to be positive"
 | otherwise = partition (\ p -> isIn center p r) ps

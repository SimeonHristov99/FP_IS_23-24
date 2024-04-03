-- Нека е даден списък от точки в тримерно пространство,
-- представени като наредени
-- тройки. Да се напише на Haskell функция
-- getClosestDistance :: [(Double,Double,Double)] -> Double,
-- която намира най-малкото от разстоянията между двойките точки от списъка.
-- Разстоянието d се дeфинира по следния начин:
-- ако разглеждаме точките
-- p1=(x1, y1, z1)
-- и p2=(x2, y2, z2),
-- то d(p1, p2) = (x1-x2)*(x1-x2)+(y1-y2)*(y1-y2)+(z1-z2)*(z1-z2).

import Data.List

main :: IO()
main = do
    print $ getClosestDistance [(4, 5, 6), (2, 5, 10), (5, 2, (-10)), ((-2), 1, 45), (12, 0, 2), (6, 5, 4)] == 2.83

d :: (Double, Double, Double) -> (Double, Double, Double) -> Double
d (x1, y1, z1) (x2, y2, z2) = sqrt $ (x1-x2)**2 + (y1-y2)**2 + (z1-z2)**2

roundTwoDigit = (/ 100) . fromIntegral . round . (* 100)

getClosestDistance :: [(Double,Double,Double)] -> Double
getClosestDistance = roundTwoDigit . minimum
    . map (\ [p1, p2] -> d p1 p2)
    . filter (\ ys -> length ys == 2)
    . subsequences

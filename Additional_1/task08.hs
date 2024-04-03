-- Дефинирайте функцията sin n x, която приема целочисления аргумент n и реалното
-- число x и връща n-тата частична сума на развитието в степенен ред на функцията sin(x),
-- дефинирано като:

main :: IO()
main = do
    print $ mySin 100 1 == 0.8414709848078965 -- n = 100, x = 1
    print $ mySin 100 0.5 == 0.479425538604203

mySin :: Integer -> Double -> Double
mySin 0 x = x
mySin n x = ((-1)^n * x^(2*n + 1)) / (fromIntegral $ product [1 .. 2*n + 1]) + mySin (n - 1) x

-- Дефинирайте функцията sin n x, която приема целочисления аргумент n и реалното
-- число x и връща n-тата частична сума на развитието в степенен ред на функцията sin(x),
-- дефинирано като:

main :: IO()
main = do
    print $ mySin 100 1 == 0.8414709848078965 -- n = 100, x = 1
    print $ mySin 100 0.5 == 0.479425538604203



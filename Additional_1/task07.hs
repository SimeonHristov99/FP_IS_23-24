-- Напишете функция, която за даден списък l, елементите на който са непразни
-- списъци от числа, връща като резултат списък от тези елементи на l,
-- които представляват
-- аритметична прогресия (числова редица,
-- в която всяко число след първото се получава, като
-- към предишното се прибавя една и съща константа).

main :: IO()
main = do
    print $ onlyArithmentic [[3], [1, 2, 3, 4, 5], [3, 5, 8, 9, 11]]  == [[3], [1, 2, 3, 4, 5]]

isAritmetic :: [Int] -> Bool
isAritmetic xs = length xs < 3 || xs == take (length xs) [xs!!0, xs!!1 .. ] 

onlyArithmentic :: [[Int]] -> [[Int]]
onlyArithmentic = filter isAritmetic
--onlyArithmentic xss = [xs | xs <- xss, isAritmetic xs]


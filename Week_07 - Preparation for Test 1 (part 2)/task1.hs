-- Да се дефинира функция primesProd :: Int -> Int,
-- която за дадено неотрицателно
-- цяло число 𝑥 връща произведението на простите числа,
-- по-малки от √𝑥. Да се
-- реализира линейно рекурсивен процес.

main :: IO()
main = do
    print $ primesProd 9 == 2
    print $ primesProd 12 == 6
    print $ primesProd 1200 == 200560490130

    print $ primesProd' 9 == 2
    print $ primesProd' 12 == 6
    print $ primesProd' 1200 == 200560490130

primesProd' :: Int -> Int
primesProd' x = helper 2
 where
    helper d
     | d * d >= x = 1
     | isPrime d = d * helper (d + 1)
     | otherwise = helper (d + 1)

primesProd :: Int -> Int
primesProd x = helper 2 (sqrt $ fromIntegral x)
 where
    helper :: Double -> Double -> Int
    helper d limit
     | d >= limit = 1
     | isPrime $ round d = round d * helper (d + 1) limit
     | otherwise = helper (d + 1) limit

isPrime :: Int -> Bool
isPrime n = [1, n] == filter (\ d -> mod n d == 0) [1 .. n]

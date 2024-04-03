-- апишете на езика Haskell функция reverseOrdSuff :: Int -> Int,
-- която по дадено естествено число k намира число,
-- получено от цифрите на най-дългия строго низходящ суфикс
-- на k, взети в обратен ред.

main :: IO()
main = do
    print $ reverseOrdSuff 37563 == 36
    print $ reverseOrdSuff 32763 == 367
    print $ reverseOrdSuff 32567 == 7
    print $ reverseOrdSuff 32666 == 6
    print $ reverseOrdSuff 53 -- == 6

-- result=3 leftover=3756
-- 3 < 6 => 

reverseOrdSuff :: Int -> Int
reverseOrdSuff n
 | n < 10 = n
 | otherwise = helper (mod n 10) (div n 10)
  where
    helper result leftover
     | mod leftover 10 > mod result 10 = helper (result * 10 + mod leftover 10) (div leftover 10)
     | otherwise = result

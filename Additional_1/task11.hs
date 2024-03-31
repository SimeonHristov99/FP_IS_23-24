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



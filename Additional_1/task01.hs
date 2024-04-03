main :: IO()
main = do
    print $ numDrink 9 3 == 13
    print $ numDrink 15 4 == 19
    print $ numDrink 761 3 == 1141

numDrink :: Int -> Int -> Int
numDrink numBottles numExchange
 |numBottles < numExchange = numBottles
 |otherwise = numExchange + numDrink (numBottles - numExchange + 1) numExchange


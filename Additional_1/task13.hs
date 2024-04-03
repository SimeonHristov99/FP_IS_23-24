-- Продукт се представя с наредена двойка от вида (име, цена).
-- Наличността в даден магазин се представя със списък от продукти.
-- а) Да се напише на Haskell функция
-- closestToAverage :: StoreAvailability -> String, която намира името на
-- продукта, чиято цена е най-близка до средната цена за всички продукти.
-- Ако има повече от един такъв продукт,
-- функцията да връща името на кой да е от намерените.
-- б) Да се напише на Haskell функция
-- cheaperAlternative :: StoreAvailability -> Int, която
-- намира броя на продуктите, за които има
-- продукт със същото име, но по-ниска цена.

import Data.List

main :: IO()
main = do
    print $ closestToAverage db1 == "cheese"
    print $ closestToAverage db2 == "butter"
    
    print $ cheaperAlternative db1 == 0
    print $ cheaperAlternative db2 == 1

type Product = (String, Double)
type StoreAvailability = [Product]

db1 = [("bread",1),("milk",2.5),("lamb",10),("cheese",5),("butter",2.3)]
db2 = [("bread",1),("cheese",2.5),("bread",1),("cheese",5),("butter",2.3)]

getAvg :: StoreAvailability -> Double
getAvg db = sum costs / (fromIntegral $ length costs)
 where
     costs = map snd db -- [1, 2.5, 10,]

closestToAverage :: StoreAvailability -> String
closestToAverage db = foldl1 (\ nx ny -> if (abs $ getAvgPr nx - getAvg db) > (abs $ getAvgPr ny - getAvg db) then ny else nx) $ nub $ map fst db
 where
     getAvgPr name = sum costsForProduct / (fromIntegral $ length costsForProduct )
      where
          costsForProduct = [ c | (n, c) <- db, n == name]

cheaperAlternative :: StoreAvailability -> Int
cheaperAlternative db = sum $ map (length . getAlternatives) db
 where
    getAlternatives :: Product -> StoreAvailability
    getAlternatives (name, price) = filter (\ (n, p) -> n == name && p < price) db

    
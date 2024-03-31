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

main :: IO()
main = do
    print $ closestToAverage db1 == "cheese"
    print $ closestToAverage db2 == "butter"
    
    print $ cheaperAlternative db1 == 0
    print $ cheaperAlternative db2 == 1


    
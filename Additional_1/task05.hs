-- Интересно число е естествено число,
-- което се дели без остатък на сумата на своите цифри.
-- Например числото 410 е интересно, тъй като 4 + 1 + 0 = 5 е делител на 410.
-- Напишете функция, която проверява дали дадено естествено число n е интересно.

import Data.Char

main :: IO()
main = do
    print $ isInteresting 410 == True
    print $ isInteresting 212 == False
    print $ isInteresting 567 == False
    print $ isInteresting 70 == True 
    print $ isInteresting 5 == True 
    print $ isInteresting 4 == True

isInteresting :: Int -> Bool
isInteresting n = mod n (sum $ map digitToInt $ show n) == 0


-- Напишете функция, която връща като резултат сумата от
-- целите числа в интервала [a,b] (a и b са две дадени естествени числа, a<=b),
-- които са от вида 4k+1 (k е цяло число) и в
-- десетичния запис на които се съдържа цифрата 6.

-- > **Implementation detail**: Solve the task with one line of code.

main :: IO()
main = do
    print $ specialSum 1 100 == 195 -- 61, 65, 69



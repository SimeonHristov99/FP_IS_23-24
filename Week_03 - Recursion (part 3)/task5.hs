{-
Define a predicate that accepts two non-negative
inputs - `x` and `y` and checks
whether `x` is a sub-number of `y`.

**Acceptance criteria:**

1. All tests pass.
-}

main :: IO()
main = do
    print $ subNumOneLine 123 5123783 == True -- x = 123, y = 5123783
    print $ subNumOneLine 0 0 == True
    print $ subNumOneLine 10 101 == True
    print $ subNumOneLine 101 101 == True
    print $ subNumOneLine 10 0 == False
    print $ subNumOneLine 1253 5123783 == False
    print $ subNumOneLine 12 0 == False

countDigits :: Int -> Int
countDigits n
 | n < 10 = 1
 | otherwise = 1 + countDigits (div n 10)

subNumOneLine :: Int -> Int -> Bool
subNumOneLine x y = x <= y
    && (x == mod y (10^(countDigits x))
        || subNumOneLine x (div y 10))

subNumGuards :: Int -> Int -> Bool
subNumGuards x y
 | x > y = False
 | x == mod y (10^(countDigits x)) = True
 | otherwise = subNumGuards x (div y 10)


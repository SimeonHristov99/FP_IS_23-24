main :: IO()
main = do
    print $ fibRec 1 == 1
    print $ fibRec 5 == 5
    print $ fibIter 5 == 5
    print $ fibIter 5000

    print $ f 42 == "Hello"
    print $ f 101 == "Bye"

    print $ mySum [1, 2, 3] == 6
    print $ mySum [1, 2, 3, -6] == 0

    print $ myZip [1, 2, 3] [30 .. ] == [(1,30),(2,31),(3,32)]

    -- print $ 1 : [2]
    print $ [2] >: 1
    print $ [[5, 6, -7]] >: [5, 6] >: 5
    print $ [[5, 6, -7]] >: [5, 6] >: 5 ^ 10 -- 

infixr 7 >:

(>:) :: [a] -> a -> [a]
xs >: x = xs ++ [x]

-- [[5, 6, -7]] >: [5, 6] >: 5
-- xs=[5,6]
-- x=5
-- [5,6] ++ [5] => [5, 6, 5]

-- xs=[[5, 6, -7]]
-- x=[5, 6, 5]
-- [[5, 6, -7]] ++ [[5, 6, 5]]

myZip :: [a] -> [b] -> [(a, b)]
myZip [] _ = []
myZip _ [] = []
myZip (x:xs) (y:ys) = (x, y) : myZip xs ys

mySum :: (Num a) => [a] -> a
mySum [] = 0
mySum (x:xs) = x + mySum xs

fPM :: Int -> String
fPM 42 = "Hello"
fPM n = "Bye"

f :: Int -> String
f n
 | n == 42 = "Hello"
 | otherwise = "Bye"

fibIter :: Int -> Int
fibIter n = helper 0 1 n
 where
    helper :: Int -> Int -> Int -> Int
    helper n0 _ 0 = n0
    helper n0 n1 1 = n1
    helper n0 n1 leftover = helper n1 (n0 + n1) (leftover - 1)

fibRec :: Int -> Int
fibRec 0 = 0
fibRec 1 = 1
fibRec n = fibRec (n - 2) + fibRec (n - 1)

main :: IO()
main = do
    print $ onFuncLevel 1 == 36 -- (1 + 5)^2 = 36

    print $ Hot
    print $ Hot == Cold -- operator==

    print $ f 5 (g 6) -- lazy evaluation. See difference with "eager.cpp" file.

data Weather = Hot | Cold
 deriving (Show, Eq)
-- data BTree = Nil | Node Int BTree BTree
-- data NTree a = Nil | Node a [NTree a]

onFuncLevel :: Int -> Int
onFuncLevel = (^2) . (+ 5)
-- onFuncLevel = (^2) $ (+ 5)
-- onFuncLevel n = (^2) $ (+ 5) n
-- onFuncLevel n = (n + 5)^2

-- return helper + helper + helper
k x = helper + helper + helper
 where
    helper = x * 2    

g :: Int -> Int
g x = g x

f :: Int -> Int -> Int
f y x = y + 10

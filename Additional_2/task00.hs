main :: IO()
main = do
    print $ f 5 (g 6) -- lazy evaluation. See difference with "eager.cpp" file.

g :: Int -> Int
g x = g x

f :: Int -> Int -> Int
f y x = y + 10

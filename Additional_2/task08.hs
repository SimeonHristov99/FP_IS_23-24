main :: IO()
main = do
   print $ (getOddCompositionValue [(+1),(*2),(\x -> x - 1), (\x -> div x 2)]) 2 == 2
   print $ (getOddCompositionValue [id, (5-), (\x -> mod x 2)]) 15 == 1

[id, (5-), (\x -> mod x 2)]

[(1, f1), (2, f2) .. (4, fn)] 5

-- (n=4,f=fn) x=acc=5
-- (n=3,f=f(n-1)) acc=5
-- (n=2,f=f(n-2)) acc=f(n-1)(5)
-- (n=1,f=f(n-3)) acc=f(n-1)(5)
-- f(n-3)(f(n-1)(5))


getOddCompositionValue :: [(Int -> Int)] -> (Int -> Int)
getOddCompositionValue fs = (\ x -> foldr (\ (n, f) acc -> if odd n then f acc else acc) x $ zip [1 ..] fs)

main :: IO()
main = do
    print $ minCount tr 4 == 1
    print $ minCount tr 2 == 3



data Tree a = Empty | Node a (Tree a) (Tree a)

tr = (Node 2 (Node 4 (Node 4 Empty Empty) Empty) Empty)

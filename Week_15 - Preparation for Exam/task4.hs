main :: IO()
main = do
    print $ minCount tr 4 == 1
    print $ minCount tr 2 == 3

size :: (Eq a) => Tree a -> Int
size Empty = 0
size (Node _ left right) = 1 + size left + size right

minCount :: (Eq a) => Tree a -> a -> Int
minCount tree val = minimum $ helper tree
 where
    helper Empty = []
    helper t@(Node value left right)
     | value == val = [size t] ++ helper left ++ helper right
     | otherwise = helper left ++ helper right


data Tree a = Empty | Node a (Tree a) (Tree a)

tr = (Node 2 (Node 4 (Node 4 Empty Empty) Empty) Empty)

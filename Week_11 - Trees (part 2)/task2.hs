main :: IO()
main = do
    print $ numOfNodes t1 == 2 -- 8 and 12
    print $ numOfNodes t2 == 3 -- 5, 8 and 12

numOfNodes :: (Num a, Eq a) => NTree a -> Int
numOfNodes Nil = 0
numOfNodes (Node grandFather parents)
    = (length $ filter (\ parent -> (sum $ getLevel parent 1) == grandFather) parents)
    + (sum $ map numOfNodes parents)

data NTree a = Nil | Node a [NTree a]
 deriving (Show)

t1 = Node 10 [Node 3 [Node 5 [Nil], Node 8 [Node 1 [Nil], Node 2 [Nil]], Node 9 [Nil]], Node 7 [Node 11 [Nil], Node 13 [Nil]], Node 12 [Node 6 [Nil], Node 4 [Nil]]]
t2 = Node 10 [Node 3 [Node 5 [Node 1 [Nil], Node 2 [Nil]], Node 8 [Node 1 [Nil], Node 2 [Nil]], Node 9 [Nil]], Node 7 [Node 11 [Nil], Node 13 [Nil]], Node 12 [Node 6 [Nil], Node 4 [Nil]]]

getLevel :: NTree a -> Int -> [a]
getLevel Nil _ = []
getLevel (Node value _) 0 = [value]
getLevel (Node value children) k = concatMap (`getLevel` (k - 1)) children

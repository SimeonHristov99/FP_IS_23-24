import Data.List

main :: IO()
main = do
    print $ mapLevel t1 [(*2), (*4), (`div` 100)] == Node 20 [Node 40 [Node 0 [Nil],Node 0 [Nil],Node 0 [Nil]],Node 40 [Node 0 [Nil],Node 0 [Nil],Node 0 [Nil]]]
    print $ mapLevel t1 [show, (nub . show . (* 1000))] == Node "10" [Node "10" [Nil,Nil,Nil],Node "10" [Nil,Nil,Nil]]
    print $ mapLevel t2 [(\ _ -> "r"), (\ char -> "w_" ++ [char]), (\ char -> "l_" ++ [char])] == Node "r" [Node "w_s" [Node "l_s" [Nil],Node "l_s" [Nil]]]

t1 :: (Num a) => NTree a
t1 = Node 10 [Node 10 [Node 10 [Nil], Node 8 [Node 10 [Nil]], Node 2 [Nil]], Node 10 [Node 11 [Nil], Node 10 [Nil], Node 6 [Nil]]]

t2 :: NTree Char
t2 = Node 's' [Node 's' [Node 's' [Nil], Node 's' [Node 's' [Nil]]]]

data NTree a = Nil | Node a [NTree a]
 deriving (Show, Eq)

mapLevel :: NTree a -> [(a -> b)] -> NTree b
mapLevel (Node value children) (f:fs) = Node (f value) $ map (\ child -> mapLevel child fs) children
mapLevel _ _ = Nil

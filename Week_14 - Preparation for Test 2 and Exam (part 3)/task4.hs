main :: IO()
main = do
    print $ pruneTree bt0 1 == Empty
    print $ pruneTree bt1 1 == Node 1 Empty
            (Node 0 Empty
            (Node 1 Empty Empty))
    print $ pruneTree bt2 1 == Node 1 Empty
            (Node 1 Empty
            (Node 1 Empty Empty))
    print $ pruneTree bt3 1 == Node 1 (Node 1 (Node 1 Empty Empty)
            (Node 1 Empty Empty))
            (Node 0 Empty
            (Node 1 Empty Empty))



data BTree = Empty | Node Int BTree BTree
 deriving (Eq, Show)

bt0 = Node 6 Empty Empty
bt1 = Node 1 Empty
    (Node 0 (Node 0 Empty Empty)
    (Node 1 Empty Empty))
bt2 = Node 1 (Node 0 (Node 0 Empty Empty)
    (Node 0 Empty Empty))
    (Node 1 (Node 0 Empty Empty)
    (Node 1 Empty Empty))
bt3 = Node 1 (Node 1 (Node 1 (Node 0 Empty Empty)
    Empty)
    (Node 1 Empty Empty))
    (Node 0 (Node 0 Empty Empty)
    (Node 1 Empty Empty))

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

data BTree = Empty | Node Int BTree BTree deriving (Eq, Show)

notContains :: BTree -> Int -> Bool
notContains Empty _ = True
notContains (Node value left right) n = value /= n && notContains left n && notContains right n

pruneTree :: BTree -> Int -> BTree
pruneTree Empty _ = Empty
pruneTree t@(Node value left right) n
 | notContains t n = Empty
 | notContains left n && notContains right n = Node value Empty Empty
 | notContains left n = Node value Empty (pruneTree right n)
 | notContains right n = Node value (pruneTree left n) Empty
 | otherwise = Node value (pruneTree left n) (pruneTree right n)


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

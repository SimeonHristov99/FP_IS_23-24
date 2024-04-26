{-
Define `numberTreeBefore` using a constructor.

Define a function that inserts a node in a binary search tree.
By using it construct the same tree and check their equality.

Define `numberTreeBefore` (name the new tree `numberTreeAfter`)
and `secondNumberTree` using insert.
-}

main :: IO()
main = do
    print $ insert (Node 10 (Node 5 (Node 3 Nil Nil) (Node 7 Nil Nil)) (Node 15 Nil (Node 18 Nil Nil))) 13 == (Node 10 (Node 5 (Node 3 Nil Nil) (Node 7 Nil Nil)) (Node 15 (Node 13 Nil Nil) (Node 18 Nil Nil)))

    print $ (numberTreeAfter == numberTreeBefore) == True

    print $ secondNumberTree == Node 10 (Node 5 (Node 3 (Node 1 Nil Nil) Nil) (Node 7 (Node 6 Nil Nil) Nil)) (Node 15 (Node 13 Nil Nil) (Node 18 Nil Nil))

data BTree = Nil | Node Int BTree BTree
 deriving (Show, Eq)

secondNumberTree = foldl insert Nil [10, 5, 3, 1, 7, 6, 15, 13, 18]

numberTreeAfter = foldl insert Nil [10, 5, 15, 3, 7, 18]
-- insert (insert (insert Nil 10) 5) 15

numberTreeBefore = Node 10 (Node 5 (Node 3 Nil Nil) (Node 7 Nil Nil)) (Node 15 Nil (Node 18 Nil Nil))

insert :: BTree -> Int -> BTree
insert Nil n = Node n Nil Nil
insert (Node value left right) n
 | n < value = Node value (insert left n) right
 | otherwise = Node value left (insert right n)

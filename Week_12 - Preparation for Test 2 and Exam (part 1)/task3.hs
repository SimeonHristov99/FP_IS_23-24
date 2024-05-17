{-
Define a function that returns all words
contained in all of the trees passed as a list.

**Acceptance criteria:**
1. The task is solved using folding.
-}

import Data.List

main :: IO()
main = do
    print $ allContain [] == []
    print $ allContain [t1, t2] == ["acd","cd","d"]
    print $ allContain [t1, t2, t3] == []
    print $ allContain [t3, t4] == ["g"]

allContain :: [BTree Char] -> [String]
allContain [] = []
allContain ts = foldl1 intersect $ map genWords ts

data BTree a = Nil | Node a (BTree a) (BTree a)

-- t1:    a
--       / \
--      c   b
--     / \   \
--    f   d   e

t1 :: BTree Char
t1 = Node 'a' (Node 'c' (Node 'f' Nil Nil) (Node 'd' Nil Nil)) (Node 'b' Nil (Node 'e' Nil Nil))

t2 :: BTree Char
t2 = Node 'a' (Node 'c' (Node 'd' Nil Nil) Nil) (Node 'b' Nil Nil)

t3 :: BTree Char
t3 = Node 'a' (Node 'b' (Node 'd' (Node 'h' Nil Nil) (Node 'i' Nil Nil)) (Node 'e' Nil Nil)) (Node 'c' (Node 'f' Nil Nil) (Node 'g' Nil Nil)) 

t4 :: BTree Char
t4 = Node 'a' (Node 'c' (Node 'd' Nil Nil) Nil) (Node 'g' Nil Nil)

genWords :: BTree Char -> [String]
genWords t = sort $ filter (containsWord t) $ subsequences $ sort $ traverseDFS t

traverseDFS :: BTree a -> [a]
traverseDFS Nil = []
traverseDFS (Node value left right) = traverseDFS left ++ [value] ++ traverseDFS right

getLevel :: BTree a -> Int -> [a]
getLevel Nil _ = []
getLevel (Node value _ _) 0 = [value]
getLevel (Node _ left right) k = getLevel left (k - 1) ++ getLevel right (k - 1)

containsWord :: BTree Char -> String -> Bool
containsWord Nil _ = False
containsWord _ [] = False
containsWord (Node value Nil Nil) [w] = value == w
containsWord t@(Node value left right) word@(w:ws)
 | not (null ws) && value == w && elem (head ws) (getLevel t 1) = containsWord left ws || containsWord right ws
 | otherwise = containsWord left word || containsWord right word

-- Define a function that returns all possible word
-- combinations from a
-- binary tree made up of characters.
-- The order of the words in the result does not matter.

import Data.List

main :: IO()
main = do
    print $ genWords t1 == ["abe","acd","acf","be","cd","cf","d","e","f"]
    print $ genWords t2 == ["ab","acd","b","cd","d"]
    print $ genWords t3 == ["abdh","abdi","abe","acf","acg","bdh","bdi","be","cf","cg","dh","di","e","f","g","h","i"]

genWords :: BTree Char -> [String]
genWords t = sort $ filter (containsWord t) $ subsequences $ sort $ traverseDFS t

traverseDFS :: BTree a -> [a]
traverseDFS Nil = []
traverseDFS (Node value left right) = traverseDFS left ++ [value] ++ traverseDFS right

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

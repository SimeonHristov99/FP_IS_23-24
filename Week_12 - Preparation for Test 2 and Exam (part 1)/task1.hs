-- Organizational updates:
-- Next hour: 22.05, 320, 6 pm.
-- 22.05 -> Split in groups of 3-4. Solve exam 2 from 2023.
-- 31.05 -> Split in groups of 3-4. Solve final from 2022.

-- Define a function that checks whether a word is present in a
-- binary tree made up of unique characters.

main :: IO()
main = do
    print $ containsWord t1 "acd" == True
    print $ containsWord t1 "cd" == True
    print $ containsWord t1 "af" == False
    print $ containsWord t1 "ac" == False
    print $ containsWord t1 "acdh" == False
    print $ containsWord t1 "b" == False
    print $ containsWord t1 "e" == True
    print $ containsWord t2 "ab" == True
    print $ containsWord t2 "ad" == False
    print $ containsWord t3 "bdh" == True
    print $ containsWord t3 "bdi" == True
    print $ containsWord t3 "ac" == False

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

-- Simo's alternative
-- containsWord :: BTree Char -> String -> Bool
-- containsWord Nil _ = False
-- containsWord _ [] = False
-- containsWord (Node value Nil Nil) [w] = value == w
-- containsWord t@(Node value left right) word@(w:ws)
--  | value == w = helper t word
--  | otherwise = containsWord left word || containsWord right word
--  where
--     helper (Node value Nil Nil) [w] = value == w
--     helper (Node value left right) (w:ws) = value == w && (helper left ws || helper right ws)
--     helper _ _ = False

data BTree a = Nil | Node a (BTree a) (BTree a)

-- t1:      a
--         / \
--        c   b
--       / \   \
--      f   d   e

t1 :: BTree Char
t1 = Node 'a' (Node 'c' (Node 'f' Nil Nil) (Node 'd' Nil Nil)) (Node 'b' Nil (Node 'e' Nil Nil))

t2 :: BTree Char
t2 = Node 'a' (Node 'c' (Node 'd' Nil Nil) Nil) (Node 'b' Nil Nil)

t3 :: BTree Char
t3 = Node 'a' (Node 'b' (Node 'd' (Node 'h' Nil Nil) (Node 'i' Nil Nil)) (Node 'e' Nil Nil)) (Node 'c' (Node 'f' Nil Nil) (Node 'g' Nil Nil))

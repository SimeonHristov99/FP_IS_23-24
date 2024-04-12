{-
Define a function that checks whether a given path is valid in
a graph `g = (1, [2, 3]), (2, [3, 4]), (3, []), (4, [])`.

**Acceptance criteria:**

1. All tests pass.
-}

main :: IO()
main = do
    -- print $ isChild 2 1 [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])]
    print $ isPath [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] [1, 2, 4] == True
    print $ isPath [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] [1, 3, 4] == False
    print $ isPath [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] [2, 3] == True
    print $ isPath [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] [3, 1] == False

type Node = Int
type Path = [Node]
type Children = [Node]
type Graph = [(Node, Children)]

isChild :: Node -> Node -> Graph -> Bool
isChild node parent graph = elem node $ concat [child | (cParent, child) <- graph, cParent == parent]
-- isChild node parent graph = elem node $ concatMap snd $ filter ((==parent) . fst) graph
-- isChild node parent [] = False
-- isChild node parent ((cParent, cChildren):gs)
--  | cParent == parent = elem node cChildren -- any (==node) cChildren
--  | otherwise = isChild node parent gs

isPath :: Graph -> Path -> Bool
isPath graph path = all (\ (parent, node) -> isChild node parent graph) $ zip path (tail path)

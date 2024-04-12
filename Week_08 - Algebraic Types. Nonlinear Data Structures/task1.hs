{-
Given a directed graph *g* with edges `[(1, 2), (1, 3), (2, 3), (2, 4)]`
define the following functions:

1. nodes - returns all the nodes of "g";
2. neighbors - accepts a node and returns its neighbors;
3. adjacencyList - returns the children of every parent.

**Acceptance criteria:**

1. All tests pass.
2. Appropriate types are created for the graph structure.
-}

import Data.List

main :: IO()
main = do
    print $ nodes [(1, 2), (1, 3), (2, 3), (2, 4)] == [1, 2, 3, 4]

    -- print $ concat $ map (\ (x, y) -> [x, y]) [(1, 2), (1, 3), (2, 3), (2, 4)]
    -- print $ concatMap (\ (x, y) -> [x, y]) [(1, 2), (1, 3), (2, 3), (2, 4)]

    print $ neighbors 2 [(1, 2), (1, 3), (2, 3), (2, 4)] == [3, 4]
    print $ neighbors 4 [(1, 2), (1, 3), (2, 3), (2, 4)] == []

    print $ adjacencyList [(1, 2), (1, 3), (2, 3), (2, 4)] == [(1, [2, 3]), (2, [3, 4])]

type Node = Int
type Nodes = [Node]
type Edge = (Node, Node)
type Graph = [Edge]

adjacencyList :: Graph -> [(Node, Nodes)]
adjacencyList graph = [
    (node, neighbors node graph) | node <- nodes graph,
    not $ null $ neighbors node graph]

neighbors :: Node -> Graph -> Nodes
neighbors node graph = [child | (parent, child) <- graph, parent == node]
-- neighbors node graph = map snd $ filter (\ (parent, child) -> parent == node) graph

nodes :: Graph -> Nodes
nodes = nub . concatMap (\ (x, y) -> [x, y])

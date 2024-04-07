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

main :: IO()
main = do
    print $ nodes [(1, 2), (1, 3), (2, 3), (2, 4)] == [1, 2, 3, 4]

    print $ neighbors 2 [(1, 2), (1, 3), (2, 3), (2, 4)] == [3, 4]
    print $ neighbors 4 [(1, 2), (1, 3), (2, 3), (2, 4)] == []

    print $ adjacencyList [(1, 2), (1, 3), (2, 3), (2, 4)] == [(1, [2, 3]), (2, [3, 4])]



{-
Define a recursive **polymorphic** algebraic type
representing an *n*-ary tree. Create one instance
and print it.

**Acceptance criteria:**

1. A new data type is created.
2. Appropriate tests are added.
-}

main :: IO()
main = do
    print $ "Hello, world!"
    print $ t

-- struct Node {
--     T a;
--     std::vector<Node<T>*> children;
-- }

-- struct Node {
--     T a;
--     Node *left;
--     Node *right;
-- }

data NTree a = Nil | Node a [NTree a]
 deriving (Show)

t :: NTree Int
t = Node 6 [Node 5 [Nil], Node 6 [Nil], Node 5 [Nil]]

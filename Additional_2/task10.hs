main :: IO()
main = do
    print $ maxDepthBlueNode colorTree == 2

data Color = Red | Green | Blue deriving (Eq)
data Tree = Empty | Node Color Tree Tree

colorTree :: Tree
colorTree = Node Blue (Node Red (Node Green Empty Empty) Empty)
                      (Node Red (Node Blue (Node Green Empty Empty)
                                           (Node Red Empty Empty))
                                Empty)


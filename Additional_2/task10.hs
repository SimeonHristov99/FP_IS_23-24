main :: IO()
main = do
    print $ maxDepthBlueNode' colorTree == 2

data Color = Red | Green | Blue deriving (Eq)
data Tree = Empty | Node Color Tree Tree

colorTree :: Tree
colorTree = Node Blue (Node Red (Node Green Empty Empty) Empty)
                      (Node Red (Node Blue (Node Green Empty Empty)
                                           (Node Red Empty Empty))
                                Empty)

getLevel :: Tree -> Int -> [Color]
getLevel Empty _ = []
getLevel (Node value _ _) 0 = [value]
getLevel (Node value left right) k = getLevel left (k - 1) ++ getLevel right (k - 1)

maxDepthBlueNode :: Tree -> Int
maxDepthBlueNode tree = maximum $ helper tree 0
 where
    helper Empty _ = []
    helper (Node Blue left right) k = k : (helper left (k + 1) ++ helper right (k + 1))
    helper (Node _ left right) k = helper left (k + 1) ++ helper right (k + 1)

height Empty = 0
height (Node _ left right) = 1 + max (height left) (height right)

maxDepthBlueNode' :: Tree -> Int
maxDepthBlueNode' t = helper $ height t - 1
 where
    helper :: Int -> Int
    helper k
     | null $ getLevel t k = -1
     | elem Blue $ getLevel t k = k
     | otherwise = helper $ k - 1

{-
Create a new data type called `Point2D`
and define a function
that accepts two functions: `f` and `g` and a list of points
with two coordinates. The function should return
those points for which `f(firstCoordinate) = g(secondCoordinate)`
and should be able to work with whole
as well as floating point numbers!

**Acceptance criteria:**

1. All tests pass.
2. `Point2D` is a new data type in Haskell.
3. Create `myImagesFold` using folding.
-}

main :: IO()
main = do
    print $ myImages (\x -> x * x) (2+) [Point 2 2, Point 1 2, Point 3 7] == [Point 2 2, Point 3 7]
    print $ myImagesFold (\x -> x * x) (2+) [Point 2 2, Point 1 2, Point 3 7] == [Point 2 2, Point 3 7]

data Point2D = Point Int Int
 deriving (Eq, Show)

myImagesFold :: (Int -> Int) -> (Int -> Int) -> [Point2D] -> [Point2D]
myImagesFold f g = foldr (\ p@(Point x y) acc -> if f x == g y then p:acc else acc) []

myImages :: (Int -> Int) -> (Int -> Int) -> [Point2D] -> [Point2D]
myImages f g = filter (\ (Point x y) -> f x == g y)
-- f(firstCoordinate) = g(secondCoordinate)

{-
Define a new **polymorphic** algrebraic data type
called `Point`. A point may have two
or three dimensions.
Create an instance for every dimension and print it.

**Acceptance criteria:**

1. `Point` is a `new` data type in Haskell.
2. Appropriate tests are added.
-}

main :: IO()
main = do
    print $ TwoD 5 6
    print $ ThreeD 5 6 7
    print $ add (TwoD 5 6) (TwoD 10 20)

add :: (Num a) => Point a -> Point a -> Point a
add (TwoD x1 x2) (TwoD y1 y2) = TwoD (x1 + y1) (x2 + y2)
add (ThreeD x1 x2 x3) (ThreeD y1 y2 y3) = ThreeD (x1 + y1) (x2 + y2) (x3 + y3)
add _ _ = error "Not implemented!"

data Point a = TwoD a a | ThreeD a a a
 deriving (Show)

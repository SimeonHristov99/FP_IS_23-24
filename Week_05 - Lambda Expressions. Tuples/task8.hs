{-
Define the `Vector` data type that is the tuple `(x, y, z)` representing a three dimensional vector (point in 3D space). Define the following functions:

- `sumVectors`: returns the sum of two vectors;
- `scaleVector`: returns a vector scaled by a number.

**Acceptance criteria:**

1. All tests pass.
2. Polymorphic typeclasses are used.
-}

main :: IO()
main = do
    print $ sumVectors (1, 2, 3) (4, 5, 6) == (5, 7, 9)
    print $ sumVectors (0, 0, 0) (100, 200, -300) == (100, 200, -300)

    print $ scaleVector (1, 2, 3) 5 == (5, 10, 15)
    print $ scaleVector (5, 2, 159) (-2) == (-10, -4, -318)

type Vector a = (a, a, a)

scaleVector :: (Num a) => Vector a -> a -> Vector a
scaleVector (x, y, z) n = (n * x, n * y, n * z)

sumVectors :: (Num a) => Vector a -> Vector a -> Vector a
sumVectors (x1, x2, x3) (y1, y2, y3) = (x1 + y1, x2 + y2, x3 + y3)

{-
Define a new data type called `Shape`. `Shape` must have four constructors:

- `Circle`: with one argument representing the radius;
- `Rectangle`: with two arguments representing the width and height;
- `Triangle`;
- `Cylinder` with two arguments for the radius of the base and height.

Create a shape from every type and output it.

**Acceptance criteria:**

1. `Shape` is a `new` data type in Haskell.
2. Appropriate tests are added that demonstrate
    what the typeclass `Show` allows.
3. Appropriate tests are added that demonstrate
    what the typeclass `Eq` allows.
4. Appropriate tests are added that demonstrate
    what the typeclass `Read` allows.
5. Appropriate tests are added that demonstrate
    what the typeclass `Ord` allows.
-}

main :: IO()
main = do
    print $ "Hello, world!"



{-
Define a function that:

- accepts a function and returns a unary lambda that applies that
function to its argument;
- accepts a predicate and returns a unary lambda that applies the
negated predicate to its argument;
- accepts two functions and returns their composition over an argument;
- returns a function that is the partial application of `f` over `x`;
- `(\ x y z -> x y z) (\ x y -> x + y) 5 6` <- What will the output be?

**Acceptance criteria:**

1. All tests pass.
2. Typeclasses are used.
-}

main :: IO()
main = do
    print $ (myLambda (\ x -> x)) 5 == 5
    print $ (myLambda (\ x -> x)) "Hello" == "Hello"
    print $ (myLambda (+1)) 5 == 6

    print $ (negatePred (\x -> mod x 2 == 0)) 2 == False

    print $ (compose (\x -> x - 5) (\y -> y + 25)) 5 == 25
    print $ (compose group sort) "Hello World" == [" ","H","W","d","e","lll","oo","r"]

    print $ (partiallyApply (\x y -> 10 * x + y) 5) 10 == 60

    -- print $ (\ x y z -> x y z) (\ x y -> x + y) 5 6



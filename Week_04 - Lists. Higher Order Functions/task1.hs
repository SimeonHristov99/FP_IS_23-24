{-
Define predicates that check whether a list has at least one element.

**Acceptance criteria:**

1. All tests pass.
2. `hasElemenetsPM` uses pattern matching.
3. `hasElementsFunc` uses built-in functions.
4. `hasElementsButWithMagic` is defined on a functional level.
-}

main :: IO()
main = do
    print $ hasElementsPM [] == False
    print $ hasElementsPM [1, 2, 3] == True

    print $ hasElementsFunc [] == False
    print $ hasElementsFunc [1, 2, 3] == True

    print $ hasElementsButWithMagic [] == False
    print $ hasElementsButWithMagic [1, 2, 3] == True



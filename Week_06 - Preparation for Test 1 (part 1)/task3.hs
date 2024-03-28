{-
Define a function - `countOccurrences`, that takes a word
and returns a list of tuples in the form *(x, xCount)* where
for each letter *x*, *xCount* is the number of times
it is present in the word. Ignore capitalization.

**Acceptance criteria:**

1. All tests pass.
2. `countOccurrences` is defined on a functional level.
3. Capitalization is ignored.
-}

main :: IO()
main = do
    print $ countOccurrences "Test" == [('e',1),('s',1),('t',2)]
    print $ countOccurrences "ThisIsAReallyLongWordContaingAlmostEveryCharacter" == [('a',6),('c',3),('d',1),('e',4),('g',2),('h',2),('i',3),('l',4),('m',1),('n',3),('o',4),('r',5),('s',3),('t',4),('v',1),('w',1),('y',2)]



{-
Write a function that finds
the maximum digit in a number.

**Acceptance criteria:**

1. All tests pass.
-}

main :: IO()
main = do
    print $ findMax 55345 == 5
    print $ findMax 14752 == 7
    print $ findMax 329450 == 9
    print $ findMax 9521 == 9



findMax :: Int -> Int
findMax n = helperPM n 0 
 where
    helperPM :: Int -> Int -> Int
    helperPM 0 currentMax = currentMax
    helperPM leftover currentMax =
        helperPM (div leftover 10)
            (max (mod leftover 10) currentMax)

    helperGuards :: Int -> Int -> Int
    helperGuards leftover currentMax 
     | leftover < 10 = max leftover currentMax
     | otherwise = helperGuards (div leftover 10) (max (mod leftover 10) currentMax)

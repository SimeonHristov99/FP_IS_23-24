{-
A digital root is the recursive sum of all the digits in a number.
Given `n`, take the sum of the digits of `n`.
If that value has more than one digit,
continue reducing in this way until a single-digit number is produced.
This is only applicable to the natural numbers.

**Acceptance criteria:**

1. All tests pass.
2. Parameter validation is performed.
-}

main :: IO()
main = do
    print $ digitalRoot 16 == 7
    -- => 1 + 6
    -- => 7
    print $ digitalRoot 942 == 6
    -- => 9 + 4 + 2
    -- => 15 ...
    -- => 1 + 5
    -- => 6
    print $ digitalRoot 132189 == 6
    print $ digitalRoot 493193 == 2



{-
A number is a palindrome if and only if it is the same number from right to
left as well as from left to right.
Define a predicate that checks whether a non-negative number is a palindrome.

**Acceptance criteria:**

1. All tests pass.
2. Parameter validation is performed.
-}

main :: IO()
main = do
    print $ isPalindrome 1 == True
    print $ isPalindrome 6 == True
    print $ isPalindrome 1010 == False
    print $ isPalindrome 505 == True
    print $ isPalindrome 123321 == True
    print $ isPalindrome 654 == False
    print $ isPalindrome 121 == True
    print $ isPalindrome 12 == False
    print $ isPalindrome 120 == False
    print $ isPalindrome 12321 == True
    print $ isPalindrome 1221 == True



main :: IO()
main = do
    print $ countLetters "Hello World" == 5
    print $ countLetters "   haskell is    great " == 2
    print $ countLetters "Information Systems 2023" == 7

countLetters :: String -> Int
countLetters = last . init . map length . words

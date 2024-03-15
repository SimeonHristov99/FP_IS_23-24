# All tasks work with whole numbers unless stated otherwise

> 🗿 **Legend**: ⭐ - Easy | 🌟 - Medium | 💫 - Hard

## ⭐ Task 1

**Description:**

Define predicates that check whether a list has at least one element.

**Acceptance criteria:**

1. All tests pass.
2. `hasElemenetsPM` uses pattern matching.
3. `hasElementsFunc` uses built-in functions.
4. `hasElementsButWithMagic` is defined on a functional level.

**Test cases:**

```haskell
print $ hasElementsPM [] == False
print $ hasElementsPM [1, 2, 3] == True

print $ hasElementsFunc [] == False
print $ hasElementsFunc [1, 2, 3] == True

print $ hasElementsButWithMagic [] == False
print $ hasElementsButWithMagic [1, 2, 3] == True
```

## ⭐ Task 2

**Description:**

Write functions that return the number of elements in a list.

**Acceptance criteria:**

1. All tests pass.
2. `myLengthRecNonPM` implements a linearly recursive process without pattern matching.
3. `myLengthRecPM` implements a linearly recursive process with pattern matching.
4. `myLengthFunc` uses built-in functions.

**Test cases:**

```haskell
print $ myLengthRecNonPM [] == 0
print $ myLengthRecNonPM [1, 2, 3] == 3

print $ myLengthRecPM [] == 0
print $ myLengthRecPM [1, 2, 3] == 3

print $ myLengthFunc [] == 0
print $ myLengthFunc [1, 2, 3] == 3
```

## ⭐ Task 3

**Description:**

Write a function that generates a list with the numbers in the interval `[x, y]`.

**Acceptance criteria:**

1. All tests pass.
2. `getClosedIntervalRec` is defined using recursion.
3. `getClosedIntervalOneLine` is defined on a single line.

**Test cases:**

```haskell
print $ getClosedIntervalRec 1 9 == [1, 2, 3, 4, 5, 6, 7, 8, 9]
print $ getClosedIntervalRec 9 1 == [1, 2, 3, 4, 5, 6, 7, 8, 9]

print $ getClosedIntervalOneLine 1 9 == [1, 2, 3, 4, 5, 6, 7, 8, 9]
print $ getClosedIntervalOneLine 9 1 == [1, 2, 3, 4, 5, 6, 7, 8, 9]
```

## ⭐ Task 4

**Description:**

Write a predicate that checks whether a number `n` is between two numbers - `x` and `y`.

**Acceptance criteria:**

1. All tests pass.
2. The task is solved on a single line.

**Test cases:**

```haskell
print $ isInside 1 5 4 == True -- x = 1, y = 5, n = 4
print $ isInside 5 1 4 == True
print $ isInside 10 50 20 == True
print $ isInside 10 50 1 == False
```

## ⭐ Task 5

**Description:**

Write a function that removes the first element in a list that is equal to `x` by going from left to right.

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```haskell
print $ removeFirst 5 [5, 1, 5, 3, 5] == [1, 5, 3, 5]
print $ removeFirst 3 [5, 1, 5, 3, 5] == [5, 1, 5, 5]
```

## ⭐ Task 6

**Description:**

Write a function that removes every element equal to `x` in a list.

**Acceptance criteria:**

1. All tests pass.
2. `removeAllRec` is defined using recursion.
3. `removeAllHOF` is defined using higher order functions.

**Test cases:**

```haskell
print $ removeAllRec 5 [5] == []
print $ removeAllRec 4 [4, 4] == []
print $ removeAllRec 5 [1] == [1]
print $ removeAllRec 5 [5, 1, 5, 3, 5] == [1, 3]
print $ removeAllRec 3 [5, 1, 5, 3, 5] == [5, 1, 5, 5]

print $ removeAllHOF 5 [5] == []
print $ removeAllHOF 4 [4, 4] == []
print $ removeAllHOF 5 [1] == [1]
print $ removeAllHOF 5 [5, 1, 5, 3, 5] == [1, 3]
print $ removeAllHOF 3 [5, 1, 5, 3, 5] == [5, 1, 5, 5]
```

## ⭐ Task 7

**Description:**

Write a function increments all the values in a list by a given number.

**Acceptance criteria:**

1. All tests pass.
2. `incrementByLC` is defined using list comprehension.
3. `incrementByHOF` is defined using higher order functions.

**Test cases:**

```haskell
print $ incrementByLC 5 [5] == [10]
print $ incrementByLC 4 [4, 4] == [8, 8]
print $ incrementByLC 5 [1] == [6]
print $ incrementByLC 5 [5, 1, 5, 3, 5] == [10, 6, 10, 8, 10]
print $ incrementByLC 3 [5, 1, 5, 3, 5] == [8, 4, 8, 6, 8]
    
print $ incrementByHOF 5 [5] == [10]
print $ incrementByHOF 4 [4, 4] == [8, 8]
print $ incrementByHOF 5 [1] == [6]
print $ incrementByHOF 5 [5, 1, 5, 3, 5] == [10, 6, 10, 8, 10]
print $ incrementByHOF 3 [5, 1, 5, 3, 5] == [8, 4, 8, 6, 8]
```

## 💫 (❗❗) Task 8 (❗❗)

**Description:**

Define functions that:

- Reverse a number;
- Calculate the factorial of a number;
- Check whether a number is prime;
- Returns the sum of the digits of a number;
- Find the sum of the divisors of a number.

**Acceptance criteria:**

1. All tests pass.
2. Every definition is done on a single line.

**Test cases:**

```haskell
print $ rev 123 == 321

print $ fact 5 == 120

print $ isPrime 5 == True
print $ isPrime 6 == False
print $ isPrime 11 == True
print $ isPrime 13 == True

print $ sumDig 142500 == 12

print $ sumDivs 161 == 192
```

# For home

## ⭐ Task 1

**Description:**

Define a function that finds the sum of the elements in a list.

**Acceptance criteria:**

1. All tests pass.
2. The solution does not contain `if-then-else` statements.
3. Add one new test case. Place a comment after it with the words `my test`.
4. `mySumRecNonPM` is defined using a linearly recursive process without pattern matching.
5. `mySumRecPM` is defined using a linearly recursive process with pattern matching.
6. `mySumFunc` is defined using functions that work with lists.

**Test cases:**

```haskell
print $ mySumRecNonPM [] == 0
print $ mySumRecNonPM [1, 2, 3] == 6

print $ mySumRecPM [] == 0
print $ mySumRecPM [1, 2, 3] == 6

print $ mySumFunc [] == 0
print $ mySumFunc [1, 2, 3] == 6
```

## ⭐ Task 2

**Description:**

Define a predicate that checks whether an element is present in a list.

**Acceptance criteria:**

1. All tests pass.
2. The solution does not contain `if-then-else` statements.
3. Add one new test case. Place a comment after it with the words `my test`.
4. `isPresentRecNonPM` is defined using a linearly recursive process without pattern matching.
5. `isPresentRecPM` is defined using a linearly recursive process with pattern matching.
6. `isPresentFunc` is defined using functions that work with lists.

**Test cases:**

```haskell
print $ isPresentRecNonPM 0 [] == False
print $ isPresentRecNonPM 0 [1, 2, 3] == False
print $ isPresentRecNonPM 0 [0, -1, 2] == True

print $ isPresentRecPM 0 [] == False
print $ isPresentRecPM 0 [1, 2, 3] == False
print $ isPresentRecPM 0 [0, -1, 2] == True

print $ isPresentFunc 0 [] == False
print $ isPresentFunc 0 [1, 2, 3] == False
print $ isPresentFunc 0 [0, -1, 2] == True
```

## ⭐ Task 3

**Description:**

Define a function that returns a list of the prime numbers with at least three digits in a given interval.

**Acceptance criteria:**

1. All tests pass.
2. The solution does not contain `if-then-else` statements.
3. Add one new test case. Place a comment after it with the words `my test`.
4. `primesInRangeLC` uses list comprehension in one line of code.
5. `primesInRangeHOF` uses higher order functions in one line of code.

**Test cases:**

```haskell
print $ primesInRangeLC 1 100 == []
print $ primesInRangeLC 998 1042 == [1009,1013,1019,1021,1031,1033,1039]
print $ primesInRangeLC 120 666 == [127,131,137,139,149,151,157,163,167,173,179,181,191,193,197,199,211,223,227,229,233,239,241,251,257,263,269,271,277,281,283,293,307,311,313,317,331,337,347,349,353,359,367,373,379,383,389,397,401,409,419,421,431,433,439,443,449,457,461,463,467,479,487,491,499,503,509,521,523,541,547,557,563,569,571,577,587,593,599,601,607,613,617,619,631,641,643,647,653,659,661]
print $ primesInRangeLC 420 240 == [241,251,257,263,269,271,277,281,283,293,307,311,313,317,331,337,347,349,353,359,367,373,379,383,389,397,401,409,419]
print $ primesInRangeHOF 1 100 == []
print $ primesInRangeHOF 998 1042 == [1009,1013,1019,1021,1031,1033,1039]
print $ primesInRangeHOF 120 666 == [127,131,137,139,149,151,157,163,167,173,179,181,191,193,197,199,211,223,227,229,233,239,241,251,257,263,269,271,277,281,283,293,307,311,313,317,331,337,347,349,353,359,367,373,379,383,389,397,401,409,419,421,431,433,439,443,449,457,461,463,467,479,487,491,499,503,509,521,523,541,547,557,563,569,571,577,587,593,599,601,607,613,617,619,631,641,643,647,653,659,661]
print $ primesInRangeHOF 420 240 == [241,251,257,263,269,271,277,281,283,293,307,311,313,317,331,337,347,349,353,359,367,373,379,383,389,397,401,409,419]
```

## ⭐ Task 4

**Description:**

Define a function that returns the sum of the uneven numbers in a range.

**Acceptance criteria:**

1. All tests pass.
2. The solution does not contain `if-then-else` statements.
3. Add one new test case. Place a comment after it with the words `my test`.
4. `sumUnevenLC` uses list comprehension in ONE line of code.
5. `sumUnevenHOF` uses higher order functions in ONE line of code.

**Test cases:**

```haskell
print $ sumUnevenLC 5 50 == 621
print $ sumUnevenLC 50 1 == 625
print $ sumUnevenLC 564 565 == 565

print $ sumUnevenHOF 5 50 == 621
print $ sumUnevenHOF 50 1 == 625
print $ sumUnevenHOF 564 565 == 565
```

## 🌟 Task 5

**Description:**

Define a function that checks whether the digits of a non-negative number are ordered in non-decreasing order. 

**Acceptance criteria:**

1. All tests pass.
2. The solution does not contain `if-then-else` statements.
3. Add one new test case. Place a comment after it with the words `my test`.
4. The implementation should be on one line.
5. The implementation does not include *div* and/or *mod*.

**Test cases:**

```haskell
print $ isAscending 0 == True
print $ isAscending 10 == False
print $ isAscending 123 == True
print $ isAscending 1233 == True
print $ isAscending 12332 == False    
```

## 💫 Task 6

**Description:**

Define a function that returns the sum of the first *n* prime numbers that contain a digit *d*.

> **Hint**: You can define an infinite list by using this construction: [1 .. ]. This defines a list with no upper bound. Now, use functions such as 'take' and 'drop' (refer to them in 'notes.txt') to get only the first 'n' numbers that satisfy the condition. For example: take ??? [1 .. ].

**Acceptance criteria:**

1. All tests pass.
2. The solution does not contain `if-then-else` statements.
3. Add one new test case. Place a comment after it with the words `my test`.
4. The solition uses higher order functions.
5. The solition is defined on one line of code.

**Test cases:**

```haskell
print $ sumSpecialPrimes 5 2 == 392 -- n = 5, d = 2
print $ sumSpecialPrimes 5 3 == 107
print $ sumSpecialPrimes 10 3 == 462
```

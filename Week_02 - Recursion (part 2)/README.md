# 🎯 Goals for week 2

1. Get familiar with terminology: `definition`, `declaration`, `type inference`, `closures`.
2. Understand the `differences` between the `two types of recursive processes`.
3. Practice writing high quality code:
   1. Easy to read.
   2. Safe from bugs.
   3. Ready for change.

> 🗿 **Legend**: ⭐ - Easy | 🌟 - Medium | 💫 - Hard

## ⭐ Task 1

**Description:**

A number is a palindrome if and only if it is the same number from right to left as well as from left to right. Define a predicate that checks whether a non-negative number is a palindrome.

**Acceptance criteria:**

1. All tests pass.
2. Parameter validation is performed.

**Test cases:**

```haskell
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
```

## ⭐ Task 2

**Description:**

Define a recursive function for calculating the sum of the digits of a whole number.

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```haskell
print $ sumDigitsRec 12345 == 15
print $ sumDigitsRec 123 == 6
```

## 🌟 Task 3

**Description:**

Define a recursive and an iterative function for calculating `x` to the power of `n`, where `x` is a floating-point number and `n` is a natural number.

**Acceptance criteria:**

1. All tests pass.
2. `powRec` implements a linearly recursive process.
3. `powIter` implements a linearly iterative process.

**Test cases:**

```haskell
print $ powRec 2 5 == 32
print $ powRec 15 3 == 3375

print $ powIter 2 5 == 32
print $ powIter 15 3 == 3375
```

## 🌟 Task 4

**Description:**

A prime number is a natural number greater than `1` that is not a product of two smaller natural numbers. Define a predicate that checks whether a number is a prime number.

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```haskell
print $ isPrime 1 == False
print $ isPrime 2 == True
print $ isPrime 3 == True
print $ isPrime 6 == False
print $ isPrime 61 == True
```

## ⭐ Task 5

**Description:**

Define a function that returns the sum of the divisors of a non-negative number.

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```haskell
print $ sumDivs 0 == 0
print $ sumDivs 1 == 1
print $ sumDivs 6 == 12 -- 1 + 2 + 3 + 6
print $ sumDivs 12345 == 19776
```

## ⭐ Task 6

**Description:**

A number - `n`, is perfect if and only if it is natural and equal to the sum of its divisors that are less than `n`. Define a predicate that checks whether a number is perfect.

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```haskell
print $ isPerfect 1 == False
print $ isPerfect 6 == True -- 1 + 2 + 3 = 6 = 6
print $ isPerfect 495 == False
print $ isPerfect 33550336 == True
```

## 🌟 Task 7

**Description:**

Define a predicate that checks whether the digits of a non-negative whole number are ordered in an ascending order.

**Acceptance criteria:**

1. All tests pass.
2. The solution does not explicitly return `True` or `False`.

**Test cases:**

```haskell
print $ hasIncDigits 1244 == True
print $ hasIncDigits 12443 == False
```

## For home

### 📢 Advice

The tasks have the sole purpose of helping you understand the material better and faster. Therefore:

1. Avoid using external tools or help for solving the tasks.
2. Drop us an email with your question/problem when you have difficulties.
3. If you can't solve a task:
   1. Spend at least 30 minutes trying out different ways to achieve what you want - maybe try to break down the task into smaller tasks and create functions that solve them.
   2. Solving a task manually with pen and paper will help you break it down into smaller tasks.
   3. If the above points don't help, it's best to reach out to us, skip this task and continue with the others. This would allow you to continue solving, while you're waiting for feedback from us.
4. If you are struggling a lot with the tasks, don't hesitate to ask us for a `1-1 session` in-person or via Google Meet 😇!

### ⭐ Task 1

**Description:**

Define a recursive and an iterative function for calculating the number of digits of a non-negative number.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. Guards are used.
4. Parameter validation is performed.
5. `countDigitsIter` implements a linearly iterative process.
6. `countDigitsRec` implements a linearly recursive process.

**Test cases:**

```haskell
print $ countDigitsIter 12345 == 5
print $ countDigitsIter 123 == 3

print $ countDigitsRec 12345 == 5
print $ countDigitsRec 123 == 3
```

### ⭐ Task 2

**Description:**

Define a function for calculating the sum of the digits of a non-negative number.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. Parameter validation is performed.
4. A linearly iterative process is implemented.

**Test cases:**

```haskell
print $ sumDigitsIter 12345 == 15
print $ sumDigitsIter 123 == 6
```

### ⭐ Task 3

**Description:**

Define a function that returns the sum of all prime divisors of a given number.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```haskell
print $ sumPrimeDivs 0 == 0
print $ sumPrimeDivs 6 == 5 -- 2 + 3
print $ sumPrimeDivs 18 == 5 -- 2 + 3
print $ sumPrimeDivs 19 == 19
print $ sumPrimeDivs 45136 == 53
```

### 🌟 Task 4

**Description:**

Define a function that returns the number of occurrences of a given digit in a given positive number.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```haskell
print $ countOccurrences 121 1 == 2
print $ countOccurrences 222 1 == 0
print $ countOccurrences 100 0 == 2
print $ countOccurrences 0 0 == 1
```

### ⭐ Task 5

**Description:**

Two numbers are amicable if the sum of the divisors of one of them is equal to the other. Define a predicate that checks whether two numbers are amicable.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. The solution does not explicitly return `True` or `False`.

**Test cases:**

```haskell
print $ areAmicable 200 300 == False
print $ areAmicable 220 284 == True
print $ areAmicable 284 220 == True
print $ areAmicable 1184 1210 == True
print $ areAmicable 2620 2924 == True
print $ areAmicable 6232 6368 == True
```

### ⭐ Task 6

**Description:**

A number is interesting if and only if it is evenly divided by the sum of its digits. Define a predicate that checks whether a number is interesting.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. The solution does not explicitly return `True` or `False`.

**Test cases:**

```haskell
print $ isInteresting 410 == True
print $ isInteresting 212 == False
print $ isInteresting 567 == False
print $ isInteresting 70 == True 
print $ isInteresting 5 == True 
print $ isInteresting 4 == True 
```

### ⭐ Task 7

**Description:**

Given a divisor `d` and a bound `b` find the largest whole number `n` such that:

```text
n is divisible by d
and n is less than or equal to b
and n is greater than 0
```

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```haskell
print $ maxMultiple 2 7 == 6
print $ maxMultiple 3 10 == 9
print $ maxMultiple 7 17 == 14
print $ maxMultiple 10 50 == 50
print $ maxMultiple 37 200 == 185
print $ maxMultiple 7 100 == 98  
print $ maxMultiple 7 10 == 7
print $ maxMultiple 4 4 == 4
```

### 🌟 Task 8

**Description:**

Write a function that removes the digit `d` from the number `n`.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```haskell
print $ removeD 1 656 == 656
print $ removeD 5 656 == 66
print $ removeD 6 656 == 5
print $ removeD 0 606 == 66
print $ removeD 0 600 == 6
print $ removeD 6 600 == 0
print $ removeD 2 1234 == 134
```

### ⭐ Task 9

**Description:**

Write a function that forms a number from every other digit starting from the right of a whole number `n` (assume `n >= 10`).

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```haskell
print $ everyOther 12 == 1
print $ everyOther 852369 == 628
print $ everyOther 1714 == 11
print $ everyOther 12345 == 42
print $ everyOther 891 == 9
print $ everyOther 123 == 2
print $ everyOther 2121 == 22
print $ everyOther 4736778 == 767
print $ everyOther 448575 == 784
print $ everyOther 4214 == 14
```

### ⭐ Task 10

**Description:**

Define a function that takes two numbers and returns the number of palindromes in the open interval between them.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```haskell
print $ countPalindromes 5 13 == 5 -- 6 7 8 9 11
print $ countPalindromes 13 5 == 5 -- 6 7 8 9 11
```

### 🌟 Task 11

**Description:**

Define a predicate that accepts a number - `n`, and checks whether `n` is prime **and** whether every number that is produced by removing digits from right to left from `n` is also prime.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```haskell
print $ truncatablePrime 3797 == True -- 3797, 379, 37 and 3 are all prime
print $ truncatablePrime 47 == False -- 47 is prime, but 4 is not
print $ truncatablePrime 0 == False
print $ truncatablePrime 1 == False
print $ truncatablePrime 2 == True
print $ truncatablePrime 37397 == True
print $ truncatablePrime 1399 == False -- 1 is not prime
print $ truncatablePrime 1733 == False -- 1 is not prime
print $ truncatablePrime 1913 == False -- 1 is not prime
print $ truncatablePrime 1931 == False -- 1 is not prime
print $ truncatablePrime 1933 == False -- 1 is not prime
print $ truncatablePrime 1973 == False -- 1 is not prime
print $ truncatablePrime 19333 == False -- 1 is not prime
print $ truncatablePrime 19739 == False -- 1 is not prime
```

### 💫 Task 12

**Description:**

Write a function that accepts three whole numbers - `a`, `b` and `n` (assume `n > 3`) and returns the **sum** of the **last three** numbers from the following sequence.

![Alt text](assets/task14.png?raw=true "task14.png")

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```haskell
print $ findSum 0 2 10 == 3578 -- 510 + 1022 + 2046
print $ findSum 5 3 5 == 174 -- 26 + 50 + 98
```

In the first example a = 0, b = 2, n = 10. The resulting sequence is therefore s0, s1, s2, ... where

- s0 = 0 + 1x2 = 2
- s1 = 0 + 1x2 + 2x2 = 6
- s2 = 0 + 1x2 + 2x2 + 4x2 = 14 and so on.

In the second example a = 5, b = 3, n = 5. The resulting sequence is therefore s0, s1, s2, ... where

- s0 = 5 + 1x3 = 8
- s1 = 5 + 1x3 + 2x3 = 14
- s2 = 5 + 1x3 + 2x3 + 4x3 = 26 and so on.

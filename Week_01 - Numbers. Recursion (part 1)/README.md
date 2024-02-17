# 🎯 Goals for week 1

1. Understand the `syntax`.
2. Understand what the dollar sign operator (`$`) is used for.
3. Understand what is a `definition of a function on a functional level`.
4. Understand what `guards` are.
5. Understand the `difference` between the `two types of recursive processes`.
6. Understand when to use the wildcard symbol (`_`).
7. Understand what `pattern matching` is.
8. Understand what `partial function application` is.
9. Understand why `prefix` function application does `not` require brackets.
10. Why using `a`, `b`, `c` for naming parameters is an anti-pattern.
11. Should we use `built-in functions` or implement them by ourselves?

> 🗿 **Legend**: ⭐ - Easy | 🌟 - Medium | 💫 - Hard

## ⭐ Task 1 - Arithmetic operations

**Description:**

Define the following functions:

- `minIf`, `minGuard`, `minBuiltIn`: return the smaller of two whole numbers;
- `lastDigit`: returns the last digit of a number;
- `quotientWhole`: returns the quotient of the division of two whole numbers;
- `divWhole`: returns the quotient and remainder of the division of two whole numbers;
- `removeLastDigit`: returns a whole number without its last digit;
- `divReal`: returns the quotient and remainder of the division of two real numbers;
- `quotientReal`: returns the quotient of the division of two real numbers;
- `avgWhole`: returns the average of two whole numbers;
- `roundTwoDig`, `roundTwoDigButWithMagic`: return the number rounded to the second digit after the decimal point.

**Acceptance criteria:**

1. All tests pass.
2. Add a test case with a negative number for `minIf`.
3. `minIf` uses an if-else statement.
4. `minGuard` uses guards.
5. `minBuiltIn` uses built-in functions.
6. `roundTwoDigButWithMagic` is defined on a functional level using partial function application.
7. Explain why brackets are not needed when using prefix functions.

**Test cases:**

```haskell
print $ minIf 15 60 == 15
print $ minIf 60 15 == 15

print $ minGuard 15 60 == 15
print $ minGuard 60 15 == 15

print $ minBuiltIn 60 15 == 15

print $ lastDigit 154 == 4

print $ quotientWhole 64 2 == 32

print $ divWhole 154 17 == 9.058823529411764

print $ removeLastDigit 154 == 15    

print $ divReal 154.451 10.01 == 15.42967032967033

print $ quotientReal 154.21 17.17 == 8

print $ avgWhole 5 1542 == 773.5

print $ roundTwoDig 3.1413465345321 == 3.14

print $ roundTwoDigButWithMagic 3.1413465345321 == 3.14 -- partial function application and composition (defining a function on a functional level)
```

## 🌟 Task 2 - Factorial

**Description:**

Define two functions `factRec` and `factIter` that return the factorial of a `non-negative` number.

**Acceptance criteria:**

1. All tests pass.
2. Parameter validation is performed.
3. `factRec` creates a linearly recursive process.
4. `factIter` creates a linearly iterative process.
5. Explain pattern matching.

**Test cases:**

```haskell
print $ factRec 5 == 120
print $ factRec 11 == 39916800
print $ factIter 5 == 120
```

## 💫 Task 3 - Fibonacci

**Description:**

The first few numbers of the Fibonacci sequence are: `0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144 ...` and so on.
Define two functions `fibRec` and `fibIter` that return the number at the `i`<sup>th</sup> index.

**Acceptance criteria:**

1. All tests pass.
2. Parameter validation is performed.
3. `fibRec` creates a linearly recursive process.
4. `fibIter` creates a linearly iterative process.
5. Explain the wildcard symbol (`_`).
6. Explain pattern matching.

**Test cases:**

```haskell
print $ fibRec 11 == 89
print $ fibIter 11 == 89
print $ fibIter 110 == 43566776258854844738105
```

## ⭐ Task 4 - Working with booleans

**Description:**

Define the following functions:

- `areNotEqualOneLine`, `areNotEqualGuards`: return whether two floating point numbers are different from each other;
- `inside`: returns whether a whole number `x` is between two whole numbers - `start` and `finish`.

**Acceptance criteria:**

1. All tests pass.
2. `areNotEqualOneLine` is defined on a single line.
3. `areNotEqualOneLine` is defined **without** the use of `if-else`.
4. `areNotEqualGuards` is defined using guards.
5. `inside` is defined on a single line.
6. `inside` is defined **without** the use of `if-else`.

**Test cases:**

```haskell
print $ areNotEqualOneLine 5 2 == True
print $ areNotEqualOneLine 5 5 == False

print $ areNotEqualGuards 5 2 == True
print $ areNotEqualGuards 5 5 == False

print $ inside 1 5 4 == True -- start = 1, finish = 5, x = 4
print $ inside 5 1 4 == True
print $ inside 10 50 20 == True
print $ inside 10 50 1 == False
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

### 💫 Task 1

**Description:**

Answer the following questions:

1. Which is correct: *x \`mod\` y* or *mod x y*? Why?
2. When is the use of an infix application of an otherwise prefix function permissive?
3. What is the dollar sign - `$`?
4. How do we read the dollar sign?
5. Why should we use the dollar sign?
6. When do we say that a function is defined on a functional level?
7. What is the process of turning a regular function definition into one that is defined on a functional level?
8. What are `guards`?
9. Should we use `guards` or `if-else` statements?
10. Should we use `guards` or `pattern matching`?
11. What is the analog of `guards` in `C++`?
12. List the characteristics of the linearly recursive process.
13. List the characteristics of the linearly iterative process.
14. Is it possible to have a `helper` function that is locally defined and still have a linearly recursive process?
15. When should the wildcard symbol (`_`) be used?
16. What is `pattern matching`?
17. Give three examples of partially applied functions.
18. Why are brackets not needed when having prefix function application?
19. Why is using `a`, `b`, `c` for naming parameters considered an anti-pattern?
20. Should we use `built-in functions` or implement them by ourselves?

**Acceptance criteria:**

1. Answers are written in `Bulgarian`.
2. An answer is given to every question.
3. If there are `n` questions in point `x`, you have to give `n` answers.
4. Answers are present in the body of the email and not in a `.docx` or `.txt` file.

> **Note**: Do not worry if you cannot recall some of the information. Do your best and we will help you with the rest 😇!

### 💫 Task 2

**Description:**

Watch [this](https://www.youtube.com/watch?v=HlgG395PQWw) YouTube video and answer the following questions:

1. What are closures?
2. What makes closures special?
3. What are higher order functions?
4. What are examples of higher order functions?
5. What are pure functions?
6. What is immutability?
7. What is currying?
8. What are the three core values of being purely functional?

**Acceptance criteria:**

1. Answers are written in `Bulgarian`.
2. An answer is given to every question.
3. Answers are present in the body of the email and not in a `.docx` or `.txt` file.

### ⭐ Task 3

**Description:**

Define two predicates - `isEvenIf` and `isEvenGuards`, that check whether a whole number is even.

**Acceptance criteria:**

1. Add one new test case for each of the functions. Place a comment after it with the words `my test`.
2. All tests pass.
3. `isEvenIf` uses an `if-else` statement.
4. `isEvenGuards` uses guards.
5. The types of the parameters match the description.
6. The types of the parameters match the test cases.

**Test cases:**

```haskell
print $ isEvenIf 2 == "Yes"
print $ isEvenIf 15452 == "Yes"
print $ isEvenIf 321 == "No"

print $ isEvenGuards 2 == "Yes"
print $ isEvenGuards 15452 == "Yes"
print $ isEvenGuards 321 == "No"
```

### ⭐ Task 4

**Description:**

Define two functions - `sumCubesPow` and `sumCubesNoPow`, that return the sum of the cubes of two whole numbers.

**Acceptance criteria:**

1. Add one new test case for each of the functions. Place a comment after it with the words `my test`.
2. All tests pass.
3. `sumCubesPow` is defined using the power operator.
4. `sumCubesNoPow` is defined without using the power operator.
5. The types of the parameters match the description.

**Test cases:**

```haskell
print $ sumCubesPow 5 1 == 126
print $ sumCubesPow 10 50 == 126000

print $ sumCubesNoPow 5 1 == 126
print $ sumCubesNoPow 10 50 == 126000
```

### ⭐ Task 5

**Description:**

Define a function that returns the average of the sum of the squares of two whole numbers.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. The types of the parameters match the description.

**Test cases:**

```haskell
print $ sqAvg 5 0 == 12.5
print $ sqAvg 10 13 == 134.5
```

### ⭐ Task 6

**Description:**

The greatest common divisor (`GCD`) of two or more numbers is the greatest common factor that divides them, exactly. For example, the greatest common factor of `15` and `10` is `5`, since both the numbers can be divided by `5` and there is no number larger than `5` that divides `15` and `10`, thus `GCD(15, 10) = 5`.

One way to find the greatest common divisor between two numbers - `x` and `y` is by using `The Euclidean Algorithm`.

```text
The Euclidean Algorithm for finding GCD(x,y) is as follows:
If x = 0 then GCD(x,y)=y.
If y = 0 then GCD(x,y)=x.
Write x in quotient remainder form (x = A⋅y + R). Find GCD(y,R) (since GCD(x,y)=GCD(y,R)).
```

Define two functions - `myGcdG` and `myGcdPM`, for calculating the `GCD` of two whole numbers.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. Normally, you would use the built-in function `gcd`. This is the only time when you should **not** use it.
4. The types of the parameters match the description.
5. Both functions implement `The Euclidean Algorithm` as outlined in the description.
6. `myGcdG` is implemented using guards.
7. `myGcdPM` is implemented using patten matching.

**Test cases:**

```haskell
print $ myGcdG 5 13 == 1
print $ myGcdG 13 1235 == 13

print $ myGcdPM 5 13 == 1
print $ myGcdPM 13 1235 == 13
```

### ⭐ Task 7

**Description:**

A leap year is a calendar year that contains an additional day compared to a common year. The 366th day is added to keep the calendar year synchronized with the astronomical year or seasonal year.

There are two mathematically equivalent methods for checking whether a year is a leap year.

```text
Method I: A year is leap year if it is a multiple of 400 or it is a multiple of 4 but not of 100.

Method II:
    if year is divisible by 400 then is_leap_year
    else if year is divisible by 100 then not_leap_year
    else if year is divisible by 4 then is_leap_year
    else not_leap_year 
```

Define two predicates - `isLeapYearOneLine` and `isLeapYearGuards`, that check whether a year is a leap year.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. Parameter validation is performed.
4. `isLeapYearOneLine` implements `Method I`.
5. `isLeapYearOneLine` uses boolean logical operators.
6. `isLeapYearOneLine` does not return `True` or `False` explicitly.
7. `isLeapYearGuards` uses guards.

**Test cases:**

```haskell
print $ isLeapYearOneLine 2020 == True
print $ isLeapYearOneLine 1988 == True
print $ isLeapYearOneLine 1600 == True
print $ isLeapYearOneLine 2400 == True
print $ isLeapYearOneLine 2023 == False
print $ isLeapYearOneLine 1700 == False
print $ isLeapYearOneLine 1800 == False
print $ isLeapYearOneLine 2100 == False

print $ isLeapYearGuards 2020 == True
print $ isLeapYearGuards 1988 == True
print $ isLeapYearGuards 1600 == True
print $ isLeapYearGuards 2400 == True
print $ isLeapYearGuards 2023 == False
print $ isLeapYearGuards 1700 == False
print $ isLeapYearGuards 1800 == False
print $ isLeapYearGuards 2100 == False
```

### ⭐ Task 8

**Description:**

John has a backpack. With it he can carry `k` kilograms. An item from the supermarket weighs `w` kilograms. Define a predicate that accepts three numbers - `c` (number of products), `k` and `w` and returns whether John is capable of buying all the products in one trip to the supermarket.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. Guards are used.
4. Parameter validation is performed.
5. The types of the parameters match the description.
6. The types of the parameters match the test cases.
7. The parameters are named in accordance with the names given in the description.

**Test cases:**

```haskell
print $ canCarry 5 15 3 == "Yes"
print $ canCarry 1 5 4 == "Yes"
print $ canCarry 13 25 2 == "No"
print $ canCarry 24 104.44 21.12 == "No"
print $ canCarry 51 34.75 19.852 == "No"
print $ canCarry 42 95.11 0.51 == "Yes"
```

### ⭐ Task 9

**Description:**

Each **day** a plant is growing by *upSpeed* meters. Each **night** that plant's height decreases by *downSpeed* meters due to the lack of sunlight. Initially, plant is 0 meters tall. We plant the seed at the beginning of a day. We want to know when the height of the plant will reach a certain level.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. The parameters are named in accordance with the names given in the fourth test case.

**Test cases:**

```haskell
print $ growingPlant 5 2 5 == 1
print $ growingPlant 5 2 6 == 2
print $ growingPlant 10 9 4 == 1
print $ growingPlant 100 10 910 == 10 -- upSpeed=100, downSpeed=10, desiredHeight=910
```

- for `upSpeed = 10`, `downSpeed = 9` and `desiredHeight = 4`, the output should be `1`.

```text
Because the plant reaches the desired height at day 1 (10 meters).
After day 1 --> 10
```

- for `upSpeed = 100`, `downSpeed = 10` and `desiredHeight = 910`, the output should be `10`.

```text
After day 1   --> 100
After night 1 --> 90
After day 2   --> 190
After night 2 --> 180
After day 3   --> 280
After night 3 --> 270
After day 4   --> 370
After night 4 --> 360
After day 5   --> 460
After night 5 --> 450
After day 6   --> 550
After night 6 --> 540
After day 7   --> 640
After night 7 --> 630
After day 8   --> 730
After night 8 --> 720
After day 9   --> 820
After night 9 --> 810
After day 10  --> 910
```

### ⭐ Task 10

**Description:**

A snail crawls up a column. During the day it crawls up some distance. During the night it sleeps, so it slides down for some distance (less than it crawls up during the day).

Your function accepts three parameters:

- The height of the column (meters);
- The distance that the snail crawls during the day (meters);
- The distance that the snail slides down during the night (meters).

Calculate the number of days the snail will need to reach the top of the column.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```haskell
print $ snail 3 2 1 == 2
print $ snail 10 3 1 == 5
print $ snail 10 3 2 == 8
print $ snail 100 20 5 == 7
print $ snail 5 10 3 == 1
```

### 💫 Task 11

**Description:**

Define a function that reverses a non-negative number.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. Parameter validation is performed.
4. The function implements a linearly iterative process.

**Test cases:**

```haskell
print $ rev 1 == 1
print $ rev 123 == 321
print $ rev 987654321 == 123456789
```

### 💫 Task 12

**Description:**

Define a function that takes as inputs your potential grades on homeworks and exams and outputs your final grade for this subject. If the final grade is less than `2`, return `2`.

Here is the formula:

```text
O = 1/2 TK + 1/4 IT + 1/4 IZ
```

where

```text
TK = 1/4 D + 3/8 KT + 3/8 KZ

and

D is the average grade from 3 homeworks;
KT is the average grade from 2 theory exams;
KZ is the average grade from 2 practice exams;
IT is the grade from the theory final;
IZ is the grade from the practice final.
```

Note that:

- `0` is a possible grade and means that the student did not submit their assignment.
- if a student has KZ >= 4,50 and **on each** practical exam has KZ<sub>i</sub> >= 4,00, then they don't go to the final on the practice part as that is enough to form the final grade without taking the actual final. That means that IZ = KZ.
- if a student has KT >= 4,50 and **on each** theory exam has KT<sub>i</sub> >= 4,00, then they don't go to the final on the theory part as that is enough to form the final grade without taking the actual final. That means that IT = KT.

Assume the order of the inputs is the following:

`D1 D2 D3 KZ1 KZ2 KT1 KT2 IZ IT`

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. The result is rounded to the second digit after the decimal point.

**Test cases:**

```haskell
print $ finalGrade 3 4 4 4.25 4.50 3.75 4.25 5 4.25 == 4.34
print $ finalGrade 6 6 6 4.50 5 4.50 4.75 5 4.75    == 4.95
print $ finalGrade 6 0 4 6 6 5 4.75 6 4.75          == 5.14
print $ finalGrade 4.25 0 3 2 0 0 0 0 0             == 2
print $ finalGrade 5.50 6 6 6 5.50 5.25 4 5.50 4    == 5.05
print $ finalGrade 6 6 6 5.50 5.50 4 5 5.50 5       == 5.25
print $ finalGrade 6 6 6 5.25 6 4 4 5.63 3.50       == 4.84
```

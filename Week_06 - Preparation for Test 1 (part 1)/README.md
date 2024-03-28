# 🎯 Goals for week 6

1. Introduce the concept of ***folding***.
2. Practice working with lists and higher order functions.
3. Practice writing high quality code:
   1. Easy to read.
   2. Safe from bugs.
   3. Ready for change.

> 🗿 **Legend**: ⭐ - Easy | 🌟 - Medium | 💫 - Hard

## 💫 Task 1

**Description:**

Define a function that accepts a unary function and a list of numbers [y<sub>1</sub>, y<sub>2</sub> .. y<sub>n</sub>] and returns a function that for every `x` calculates the expression: f(y<sub>1</sub>x) + 2 f(y<sub>2</sub>x) + .. + n f(y<sub>n</sub>x).

**Acceptance criteria:**

1. All tests pass.
2. The task is solved on a single line of code.
3. Typeclasses are used.

**Test cases:**

```text
If g is myPolynomial (\x -> x - 2) [],
    then g 5 -> 0
If g is myPolynomial (\x -> x + 10) [3.62, 6.12, 9.45, 8.02, 5, 2],
    then g (-5) -> -356.45
If g is myPolynomial (\x -> x - 2) [1, 4, 7, 8, 5, 2],
    then g 5 -> 453
```

## 🌟 Task 2

**Description:**

We say that one function dominates another if for every value the absolute value after applying `f` is greater than or equal to the absolute value after applying `g`.

Define a function that accepts two unary functions `f` and `g` and a list of values and checks whether `f` dominates `g`.

**Acceptance criteria:**

1. All tests pass.
2. The task is solved on a single line of code.
3. The task is solved using **folding**.

**Test cases:**

```haskell
print $ dominates (\x -> x + 1) (\x -> x + 2) [1, 2, 3, 4, 5] == False
print $ dominates (\x -> x * 3) (\x -> x + 2) [1, 2, 3, 4, 5] == True
```

## 💫 Task 3

**Description:**

Define a function - `countOccurrences`, that takes a word and returns a list of tuples in the form *(x, xCount)* where for each letter *x*, *xCount* is the number of times it is present in the word. Ignore capitalization.

**Acceptance criteria:**

1. All tests pass.
2. `countOccurrences` is defined on a functional level.
3. Capitalization is ignored.

**Test cases:**

```haskell
print $ countOccurrences "Test" == [('e',1),('s',1),('t',2)]
print $ countOccurrences "ThisIsAReallyLongWordContaingAlmostEveryCharacter" == [('a',6),('c',3),('d',1),('e',4),('g',2),('h',2),('i',3),('l',4),('m',1),('n',3),('o',4),('r',5),('s',3),('t',4),('v',1),('w',1),('y',2)]
```

## 🌟 Task 4

**Description:**

![Alt text](assets/point.png?raw=true "forHomeTask2.png")

**Acceptance criteria:**

1. All tests pass.
2. Parameter validation is performed.

**Test cases:**

```haskell
print $ splitPoints (1, 1) 5 [(1, 2), (2, 3), (10, 15), (-1, 1), (12, 14)] == ([(1.0, 2.0), (2.0, 3.0), (-1.0, 1.0)], [(10.0, 15.0), (12.0, 14.0)])
print $ splitPoints (10, 10) 5 [(1, 2), (2, 3), (10, 15), (-1, 1), (12, 14)] == ([(10.0, 15.0), (12.0, 14.0)], [(1.0, 2.0), (2.0, 3.0), (-1.0, 1.0)])
print $ splitPoints (0, 0) 2 [(0, 0), (1, 1), (2, 2), (0, 2)] == ([(0.0,0.0),(1.0,1.0),(0.0,2.0)],[(2.0,2.0)])
print $ splitPoints (0, 0) (-1) [(0, 0), (1, 1), (2, 2), (0, 2)] -- Should give an error
```

## 💫 Task 5

**Description:**

The difficulty of a subject is inversely proportional to the average grade of all students who are taking it.

Define a function that accepts a list of records and returns the hardest subject.

Use the following type definitions:

```haskell
type Student = String
type Subject = String
type Note = Double
type Record = (Student, Subject, Note)
```

**Acceptance criteria:**

1. All tests pass.
2. The task is solved using folding.

**Test cases:**

```haskell
print $ hardestSubject [("John", "Maths", 5), ("Kennedy", "English", 2), ("Joe", "Programming", 4), ("Claudia", "Programming", 6), ("Sam", "Maths", 4), ("Jenn", "English", 2)] == "English"
print $ hardestSubject [("John", "Maths", 5), ("Kennedy", "English", 5), ("Joe", "Programming", 4), ("Claudia", "Programming", 6), ("Sam", "Maths", 4), ("Jenn", "English", 5)] == "Maths"
```

# For home

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

Define a function `rf` that takes two unary, whole-number functions as parameters - `f` and `g` and **returns a binary function** that takes a list - `xs` as its first argument, and an unary function - `h` as its second argument. The result from the call to the returned value of `rf` should be a list containing elements in the form `h(x)` where `x` spans `xs` and `f(x) > g(x)`.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```haskell
print $ (rf ((-) (-4)) (* (-2))) [1..10] (* 3) == [15,18,21,24,27,30] -- only 5, 6, 7, 8, 9 and 10 satisfy the condition        
```

### ⭐ Task 2

**Description:**

Let a cylinder be expressed as the following: `type Cylinder = (Double, Double)`, where the first coordinate is the radius and the second - its height.

Define a function that calculates the volume of a list of cylinders.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test case:**

```haskell
print $ getVolumes [(5, 10), (5, 2), (2, 10), (2, 5)] == [785.4, 157.08, 125.66, 62.83]
```

### ⭐ Task 3

**Description:**

By using the function `normalize` **from last week**, define the following functions for the `Rat` data type:

```text
1) sumRats - returns the sum of two rational numbers
2) multiplyRats - returns the product of two rational numbers
3) divideRats - returns the quotient of two rational numbers
4) areEqual - returns whether two rational numbers are equal
```

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```haskell
print $ sumRats (2, 5) (5, 2) == (29, 10)
print $ sumRats (52, 123) (96, 14) == (6268, 861)
print $ sumRats (2, 5) (3, 5) == (1, 1)

print $ multiplyRats (2, 5) (5, 2) == (1, 1)
print $ multiplyRats (52, 123) (96, 14) == (832, 287)
print $ multiplyRats (2, 5) (3, 5) == (6, 25)

print $ divideRats (2, 5) (5, 2) == (4, 25)
print $ divideRats (52, 123) (96, 14) == (91, 1476)
print $ divideRats (2, 5) (3, 5) == (2, 3)

print $ areEqual (2, 5) (5, 2) == False
print $ areEqual (52, 123) (52 * 3, 123 * 3) == True
print $ areEqual (2, 6) (5, 15) == True
```

### 🌟 Task 4

**Description:**

Нека е дефиниран тип “сметка” `Account`, който представя вектор с три елемента `(Int,Int,Double)` - идентификатор на сметка, идентификатор на човек и баланс по сметката. Нека е дефиниран и тип “човек” `Person`, който представя вектор с три елемента `(Int,String,String)` - идентификатор на човек, име и местоживеене (населено място).

Ще работим с база от данни на банка, представена като двойка от списък от сметки и списък от хора.

а) Дефинирайте функция `getAverageBalance :: ([Account],[Person]) -> (Person -> Bool) -> Double`, която получава като аргументи база от данни и предикат `p`. Функцията трябва да връща средния баланс по всички сметки на хората, които удовлетворяват предиката `p`.

б) Дефинирайте функция `averageBalanceOfCities :: ([Account],[Person]) -> [String] -> Double`, която получава база от данни и списък от населени места и връща като резултат средния баланс по сметките на хората с местоживеене в някое от изброените в списъка населени места.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

Sample database:

```haskell
people1 :: [Person]
people1 = [(1, "Ivan", "Sofia"),(2, "Georgi", "Burgas"), (3, "Petar", "Plovdiv"),(4, "Petya", "Burgas")]

accounts1 :: [Account]
accounts1 = [(1, 1, 12.5),(2, 1, 123.2),(3, 2, 13.0),(4, 2, 50.2),(5, 2, 17.2),(6, 3, 18.3),(7, 4, 19.4)]
```

```haskell
print $ getAverageBalance (accounts1, people1) (\(_,_,city) -> city == "Burgas") == 24.95
print $ getAverageBalance (accounts1, people1) (\(_,(n:_),_) -> n == 'P') == 18.85
print $ getAverageBalance (accounts1, people1) (\ (n,_,_) -> n ==2) == 26.8

print $ averageBalanceOfCities (accounts1,people1) ["Sofia","Gabrovo","Stara Zagora"] == 67.85
print $ averageBalanceOfCities (accounts1, people1) ["Sofia"] == 67.85
print $ averageBalanceOfCities (accounts1, people1) ["Burgas","Plovdiv"] == 23.62
print $ averageBalanceOfCities (accounts1,people1) ["Pleven", "Burgas", "Sofia","Gabrovo","Stara Zagora"] == 39.25
print $ averageBalanceOfCities (accounts1, people1) ["Sofia", "Gabrovo", "Burgas"] == 39.25
```

### 💫 Task 5

**Description:**

![for-home-diag](assets/lineDiag.png?raw=true)

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

### 💫 Task 6

**Description:**

Define a function that accepts a list of whole number unary functions [f<sub>1</sub>, f<sub>2</sub> .. f<sub>n</sub>] and returns a function that for every `x` calculates the composition of the functions with odd indices: f<sub>1</sub>(f<sub>3</sub>(...(f<sub>n</sub>x)...)).

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. The task is solved on a single line of code.
4. The task is solved using folding.

**Test case:**

```haskell
print $ (getOddCompositionValue [(\x -> x + 1),(\x -> x * 2),(\x -> x - 1), (\x -> div x 2)]) 2 == 2
```

### 🌟 Task 7

**Description:**

Write a function that sums the unique numbers in the sublists of a list.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```haskell
print $ sumUnique [[1,2,3,2],[1,-4],[1]] == 2
print $ sumUnique [[1,2,3,2],[-4,-4],[5]] == 9 -- (= 1 + 3 + 5)
print $ sumUnique [[2,2,2],[3,3,3],[4,4,4]] == 0
print $ sumUnique [[1,2,3],[4,5,6],[7,8,9]] == 45
```

### 🌟 Task 8

**Description:**

Write a function returns the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```haskell
print $ duplicateCount "" == 0 -- no characters repeats more than once
print $ duplicateCount "abcde" == 0
print $ duplicateCount "aabbcde" == 2 -- 'a' and 'b'
print $ duplicateCount "aabBcde" == 2 -- 'a' occurs twice and 'b' twice (`b` and `B`)
print $ duplicateCount "indivisibility" == 1 -- 'i' occurs six times
print $ duplicateCount "Indivisibility" == 1
print $ duplicateCount "aA11" == 2 -- 'a' and '1'
print $ duplicateCount "ABBA" == 2 -- 'A' and 'B' each occur twice
print $ duplicateCount "Indivisibilities" == 2 -- 'i' occurs seven times and 's' occurs twice
print $ duplicateCount ['a'..'z'] == 0
print $ duplicateCount (['a'..'z'] ++ ['A'..'Z']) == 26
```

### 💫 Task 9

**Description:**

Define a function that accepts a string and removes all duplicate letters. Two characters are duplicate, if:

```text
They represent the same character
AND they are next to each other
AND the first is upper-case and the second - lower-case (or vice versa).
```

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```haskell
print $ reduceStr "aA" == ""
print $ reduceStr "dabAcCaCBAcCcaDD" == "dabCBAcaDD" -- dabAcCaCBAcCcaDD -> dabAaCBAcCcaDD -> dabCBAcCcaDD -> dabCBAcaDD
                                                            ^^                 ^^                   ^^
```

### ⭐ Task 10

**Description:**

Define a function that accepts a number and returns the tuple `(x, y)` where `x` is the sum of the digits on even indices of the number and `y` - the sum of the ones on odd indices.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. The task is solved on a single line of code.
4. The task is solved using folding.

**Test cases:**

```haskell
print $ checkNumber 2728 == (4,15)
print $ checkNumber 31415 == (12,2)
print $ checkNumber 121 == (2,2)
```

### 🌟 Task 11

**Description:**

Write a function that, for a list `xss` whose elements are non-empty lists of numbers, returns a list of those elements of `xss` that represent an arithmetic progression.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```haskell
print $ onlyArithmetic [[3], [1, 2, 3, 4, 5], [3, 5, 8, 9, 11]]  == [[3], [1, 2, 3, 4, 5]]
```

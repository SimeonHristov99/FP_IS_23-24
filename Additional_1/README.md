# Plan of Attack

- [X] Show `notes.txt`.
- [X] Show `prep1_haskell_tasks.txt`.
- [X] Solve the tasks given two years ago - will be done in the next practice session - Friday with Simo.
- [X] Solve the tasks given last year (`K1_FP IS_2223.pdf`).

## Task 0

Solve the sample theory test (Theory.pdf).

## Tasks 1, 2, 3, 4

Solve the exam `K1_FP IS_2223.pdf`.

## Task 5

By using the following types define a function that accepts a list of records and returns the hardest subject. The difficulty of a subject is inversely proportional to the average grade of all students who are taking it.

Type definitions:

```haskell
type Student = String
type Subject = String
type Note = Double
type Record = (Student, Subject, Note)
```

Test cases:

```haskell
print $ hardestSubject [("John", "Maths", 5), ("Kennedy", "English", 2), ("Joe", "Programming", 4), ("Claudia", "Programming", 6), ("Sam", "Maths", 4), ("Jenn", "English", 2)] == "English"
print $ hardestSubject [("John", "Maths", 5), ("Kennedy", "English", 5), ("Joe", "Programming", 4), ("Claudia", "Programming", 6), ("Sam", "Maths", 4), ("Jenn", "English", 5)] == "Maths"
```

## Task 6

Define a function that returns the sum of the special numbers in the interval [x, y] (x <= y). A number is special if it contains 6 and can be expressed as 4k + 1, where k is a whole number.

> **Implementation detail**: Solve the task with one line of code.

Test case:

```haskell
print $ specialSum 1 100 == 195 -- 61, 65, 69
```

## Task 7

Write a function that, for a list *xss* whose elements are non-empty lists of numbers, returns a list of those elements of *xss* that represent an arithmetic progression.

Test case:

```haskell
print $ onlyArithmetic [[3], [1, 2, 3, 4, 5], [3, 5, 8, 9, 11]]  == [[3], [1, 2, 3, 4, 5]]
```

## Task 8

Define the function sine, that accepts a whole number and a real number (representing radians) and returns the n-th partial sum of sin(x).

Reference the formula for writing sin(x) around the origin:

![Alt text](assets/sin.png?raw=true "sin")

Test cases:

```haskell
print $ mySin 100 1 == 0.8414709848078965 -- n = 100, x = 1
print $ mySin 100 0.5 == 0.479425538604203
```

## Task 9

Define a function that accepts two unary functions `f` and `g` and a list of values and checks whether `f` dominates `g`. We say that one function dominates another if for every value the absolute value after applying `f` is greater than or equal to the absolute value after applying `g`.

Test cases:

```haskell
print $ dominates (\x -> x + 1) (\x -> x + 2) [1, 2, 3, 4, 5] == False
print $ dominates (\x -> x * 3) (\x -> x + 2) [1, 2, 3, 4, 5] == True
```

## Task 10

A number is interesting if and only if it is evenly divided by the sum of its digits. Define a predicate that checks whether a number is interesting.

Test cases:

```haskell
print $ isInteresting 410 == True
print $ isInteresting 212 == False
print $ isInteresting 567 == False
print $ isInteresting 70 == True 
print $ isInteresting 5 == True 
print $ isInteresting 4 == True 
```

## Task 11

Define a function that takes a whole number and returns its ascending left suffix. The ascending left suffix of a number is the number that forms a strictly ascending sequence, if read from right to left.

Test cases:

```haskell
print $ reverseOrdSuff 37563 == 36
print $ reverseOrdSuff 32763 == 367
print $ reverseOrdSuff 32567 == 7
print $ reverseOrdSuff 32666 == 6
```

## Task 12

Write a function that sums the unique numbers in the sublists of a list.

Test cases:

```haskell
print $ sumUnique [[1,2,3,2],[-4,-4],[5]] == 9 -- (= 1 + 3 + 5)
print $ sumUnique [[2,2,2],[3,3,3],[4,4,4]] == 0
print $ sumUnique [[1,2,3],[4,5,6],[7,8,9]] == 45
```

## Task 13

A product is represented as an ordered pair (name, price).

```haskell
type Product = (String, Double)
```

Availability in a given shop is presented with a list of products.

```haskell
type StoreAvailability = [Product]
```

Sample database:

```haskell
db1 = [(”bread”,1),(”milk”,2.5),(”lamb”,10),(”cheese”,5),(”butter”,2.3)]
db2 = [(”bread”,1),(”cheese”,2.5),(”bread”,1),(”cheese”,5),(”butter”,2.3)]
```

Our tasks:

1. Define a function that returns the name of the product whose price is closest to the average price for all products in a database. If there is more than one such product, return the name of any of the found.

2. Define a function that returns the number of products for which a product with the same name but a lower price exists.

Test cases:

```haskell
print $ closestToAverage db1 == "cheese"
print $ closestToAverage db2 == "butter"

print $ cheaperAlternative db1 == 0
print $ cheaperAlternative db2 == 1
```

## Task 14

Define a function that accepts a list of three-dimensional points and returns the closest distance between any two points.

Test case:

```haskell
print $ getClosestDistance [(4, 5, 6), (2, 5, 10), (5, 2, (-10)), ((-2), 1, 45), (12, 0, 2), (6, 5, 4)] == 2.83
```

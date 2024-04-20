# 🎯 Goals for week 10

1. Practice working with **trees**.
2. Practice writing high quality code:
   1. Easy to read.
   2. Safe from bugs.
   3. Ready for change.

> 🗿 **Legend**: ⭐ - Easy | 🌟 - Medium | 💫 - Hard

# 💫 Task 1

**Description:**

Define a recursive **polymorphic** algebraic representing a binary tree. Create the following instances and print them:

*numberBTree*:

![Alt text](assets/task1_1.png?raw=true "task1_1.png")

*charBTree*:

![Alt text](assets/task1_2.png?raw=true "task1_2.png")

Define the following functions:

```text
​​size - returns the number of nodes;
sumTree - returns the sum of the nodes (should work only for trees that store numbers in their nodes);​
traverseDFS​ - prints the nodes using DFS;
getLevel - accepts a whole number k and returns the nodes at level k (root is at level 0);
traverseBFS - prints the nodes using BFS;
mapTree - maps an unary function to the tree.
```

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```haskell
print $ numberBTree
print $ charBTree

print $ size numberBTree == 9
print $ size charBTree == 7

print $ sumTree numberBTree == 146
-- print $ sumTree charBTree -- should not work

print $ traverseDFS numberBTree == [96, 1, 12, 0, 5, 2, 4, 5, 21]
print $ traverseDFS charBTree == "haskell"

print $ getLevel numberBTree 2 == [1, 0, 2, 5]
print $ getLevel charBTree 1 == "al"
print $ getLevel charBTree 3 == []

print $ traverseBFS numberBTree == [5,12,4,1,0,2,5,96,21]
print $ traverseBFS charBTree == "kalhsel"

print $ mapTree numberBTree (*2) == Node 10 (Node 24 (Node 2 (Node 192 Nil Nil) Nil) (Node 0 Nil Nil)) (Node 8 (Node 4 Nil Nil) (Node 10 Nil (Node 42 Nil Nil)))
print $ mapTree numberBTree (show) == Node "5" (Node "12" (Node "1" (Node "96" Nil Nil) Nil) (Node "0" Nil Nil)) (Node "4" (Node "2" Nil Nil) (Node "5" Nil (Node "21" Nil Nil)))
print $ mapTree charBTree (toUpper) == Node 'K' (Node 'A' (Node 'H' Nil Nil) (Node 'S' Nil Nil)) (Node 'L' (Node 'E' Nil Nil) (Node 'L' Nil Nil))
```

# ⭐ Task 2

**Description:**

Define a recursive **polymorphic** algebraic type representing an *n*-ary tree. Create one instance and print it.

**Acceptance criteria:**

1. A new data type is created.
2. Appropriate tests are added.

# 🌟 Task 3

**Description:**

Given a list of unique whole numbers construct a *maximum binary tree*. A binary tree is a *maximum binary tree* if:

- The root is the maximum number in the list.
- The left subtree is the maximum tree constructed from the elements on the left of the of the maximum number.
- The right subtree is the maximum tree constructed from the elements on the right of the maximum number.

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```text
if "t" is:
       6
     /   \
    3     5
    \     /
     2   0
      \
       1
```

then:

```haskell
print $ constructMaxBTree [3, 2, 1, 6, 0, 5] == t
```

# 💫 Task 4

**Description:**

Define `numberTreeBefore` using a constructor.

Define a function that inserts a node in a binary search tree. By using it construct the same tree and check their equality.

Define `numberTreeBefore` (name the new tree `numberTreeAfter`) and `secondNumberTree` using insert.

`numberTreeBefore`:

![Alt text](assets/task3_1.png?raw=true "task1_1.png")

`secondNumberTree`:

![Alt text](assets/task3_2.png?raw=true "task1_2.png")

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```haskell
print $ insert (Node 10 (Node 5 (Node 3 Nil Nil) (Node 7 Nil Nil)) (Node 15 Nil (Node 18 Nil Nil))) 13 == (Node 10 (Node 5 (Node 3 Nil Nil) (Node 7 Nil Nil)) (Node 15 (Node 13 Nil Nil) (Node 18 Nil Nil)))

print $ (numberTreeAfter == numberTreeBefore) == True

print $ secondNumberTree == Node 10 (Node 5 (Node 3 (Node 1 Nil Nil) Nil) (Node 7 (Node 6 Nil Nil) Nil)) (Node 15 (Node 13 Nil Nil) (Node 18 Nil Nil))
```

# 🌟 Task 5

**Description:**

Define a predicate that checks whether a **whole number** binary tree is a binary search tree.

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```haskell
t3 :: BTree
t3 = Node 8 (Node 3 (Node 1 Nil Nil) (Node 6 (Node 4 Nil Nil) (Node 7 Nil Nil))) (Node 10 Nil (Node 14 (Node 13 Nil Nil) Nil))

t4 :: BTree
t4 = Node 8 (Node 3 (Node 5 Nil Nil) (Node 6 Nil Nil)) (Node 10 Nil (Node 14 Nil Nil))

t5 :: BTree
t5 = Node 8 (Node 3 (Node 2 Nil Nil) (Node 6 Nil Nil)) (Node 10 Nil (Node 1 Nil Nil))

t6 :: BTree
t6 = Node 8 (Node 3 (Node 1 Nil Nil) (Node 4 Nil Nil)) (Node 10 (Node 5 Nil Nil) Nil)
```

```haskell
print $ isBinarySearchTree t3 == True
print $ isBinarySearchTree t4 == False
print $ isBinarySearchTree t5 == False
print $ isBinarySearchTree t6 == False
```

## For home

### 🌟 Task 1

**Description:**

For the trees in task 1 that we solved in class define the following functions:

```text
​​height (number of nodes along the longest branch);​
average - returns the average of the nodes (should work only for trees that store numbers in their nodes);
​​sumLeaves​ - returns the sum of the leaves (should work only for trees that store numbers in their nodes);
areEqual - checks whether two trees are identical;
setLevels - replaces the values in all nodes with the vector ("level", "value");
mirrorTree - returns the symmetric tree.
```

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```haskell
print $ height numberBTree == 4
print $ height charBTree == 3

print $ average numberBTree == 16.22
--print $ average charBTree -- should not work

print $ sumLeaves numberBTree == 119
--print $ sumLeaves charBTree -- shouldn't work

print $ areEqual numberBTree (Node 5 (Node 12 (Node 1 (Node 96 Nil Nil) Nil) (Node 0 Nil Nil)) (Node 4 (Node 2 Nil Nil) (Node 5 Nil Nil))) == False
print $ areEqual charBTree charBTree == True
print $ areEqual numberBTree (Node 5 (Node 12 (Node 1 (Node 96 Nil Nil) Nil) (Node 0 Nil Nil)) (Node 8 (Node 2 Nil Nil) (Node 5 Nil (Node 21 Nil Nil)))) == False

print $ setLevels numberBTree == Node (0,5) (Node (1,12) (Node (2,1) (Node (3,96) Nil Nil) Nil) (Node (2,0) Nil Nil)) (Node (1,4) (Node (2,2) Nil Nil) (Node (2,5) Nil (Node (3,21) Nil Nil)))
print $ setLevels charBTree == Node (0,'k') (Node (1,'a') (Node (2,'h') Nil Nil) (Node (2,'s') Nil Nil)) (Node (1,'l') (Node (2,'e') Nil Nil) (Node (2,'l') Nil Nil))

print $ mirrorTree numberBTree == Node 5 (Node 4 (Node 5 (Node 21 Nil Nil) Nil) (Node 2 Nil Nil)) (Node 12 (Node 0 Nil Nil) (Node 1 Nil (Node 96 Nil Nil)))
print $ mirrorTree charBTree == Node 'k' (Node 'l' (Node 'l' Nil Nil) (Node 'e' Nil Nil)) (Node 'a' (Node 's' Nil Nil) (Node 'h' Nil Nil))
```

### 🌟 Task 2

**Description:**

Define a function that returns the depth of the shallowest green node. Use the following types:

```haskell
data Color = Red | Green | Blue
data Tree = Empty | Node Color Tree Tree
```

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test case:**

```text
colorTree:
       Blue
      /    \
   Red      Red
   /        /  
Green     Blue  
          /   \
       Green  Red
```

```haskell
print $ minDepthGreenNode colorTree == 2
```

### 🌟 Task 3

**Description:**

The nodes in the following picture resemble the lower and higher bounds of an interval (the first number will always be lower than the second). Define a function that checks whether such a binary tree is ordered according to the relation *subinterval*.

![Alt text](assets/task11_1.png?raw=true "task11_1.png")

![Alt text](assets/task11_2.png?raw=true "task11_2.png")

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```haskell
print $ ordered t1 == True
print $ ordered t2 == False
```

### 🌟 Task 4

**Description:**

For an algebraic type representing an **n-ary** tree, define a predicate that checks whether it is a graceful tree. We say that a tree is a graceful tree if the absolute difference between every child node and its father is an even number.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```text
t1:
   1
/ / \ \
3 5  7 9

t2:
  7
  |
  9
 / \
5   2
```

```haskell
print $ isGraceful t1 == True
print $ isGraceful t2 == False
```

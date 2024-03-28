{-
The difficulty of a subject is inversely proportional to
the average grade of all students who are taking it.
Define a function that accepts a list of records
and returns the hardest subject.
Use the following type definitions:

type Student = String
type Subject = String
type Note = Double
type Record = (Student, Subject, Note)

**Acceptance criteria:**

1. All tests pass.
2. The task is solved using folding.
-}

main :: IO()
main = do
    print $ hardestSubject [("John", "Maths", 5), ("Kennedy", "English", 2), ("Joe", "Programming", 4), ("Claudia", "Programming", 6), ("Sam", "Maths", 4), ("Jenn", "English", 2)] == "English"
    print $ hardestSubject [("John", "Maths", 5), ("Kennedy", "English", 5), ("Joe", "Programming", 4), ("Claudia", "Programming", 6), ("Sam", "Maths", 4), ("Jenn", "English", 5)] == "Maths"



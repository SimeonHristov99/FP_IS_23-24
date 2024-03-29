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

import Data.List

main :: IO()
main = do
    -- print $ average [1, 2, 3]
    -- print $ nub [1, 2, 1, 2, 5, 5, 1, 7]
    print $ hardestSubject [("John", "Maths", 5), ("Kennedy", "English", 2), ("Joe", "Programming", 4), ("Claudia", "Programming", 6), ("Sam", "Maths", 4), ("Jenn", "English", 2)] == "English"
    print $ hardestSubject [("John", "Maths", 5), ("Kennedy", "English", 5), ("Joe", "Programming", 4), ("Claudia", "Programming", 6), ("Sam", "Maths", 4), ("Jenn", "English", 5)] == "Maths"

type Student = String
type Subject = String
type Note = Double
type Record = (Student, Subject, Note)

hardestSubject :: [Record] -> Subject
hardestSubject grades = fst $ foldl1 (\ group1@(s1, gr1) group2@(s2, gr2) -> if gr1 < gr2 then group1 else group2) getGrades
 where
    getGrades = map (\ subject -> (subject, average [grade | (_, gradesSub, grade) <- grades, gradesSub == subject])) subjects
    subjects = nub $ map (\ (_, subject, _) -> subject) grades

average :: [Note] -> Note
average xs = sum xs / (fromIntegral $ length xs)

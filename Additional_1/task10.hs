-- Дефинирайте функцията hardestSubject :: [Record] -> Subject, която получава списък от записи
-- за учениците от даден клас и връща името на предмета с най-ниска средна оценка за този слас

import Data.List

main :: IO()
main = do
    print $ hardestSubject [("John", "Maths", 5), ("Kennedy", "English", 2), ("Joe", "Programming", 4), ("Claudia", "Programming", 6), ("Sam", "Maths", 4), ("Jenn", "English", 2)] == "English"
    print $ hardestSubject [("John", "Maths", 5), ("Kennedy", "English", 5), ("Joe", "Programming", 4), ("Claudia", "Programming", 6), ("Sam", "Maths", 4), ("Jenn", "English", 5)] == "Maths"

type Student = String
type Subject = String
type Note = Double
type Record = (Student, Subject, Note)

hardestSubject :: [Record] -> Subject
hardestSubject db = foldr1 (\ x y -> if getAvg x > getAvg y then y else x) $ nub [ n | (_, n, _) <- db]
 where
     getAvg subjName = sum grades / (fromIntegral $ length grades)
      where
          grades = [ gr | (_, n, gr) <- db, n == subjName]

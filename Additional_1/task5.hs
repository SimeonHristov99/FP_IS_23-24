-- Дефинирайте функцията hardestSubject :: [Record] -> Subject, която получава списък от записи
-- за учениците от даден клас и връща името на предмета с най-ниска средна оценка за този клас

main :: IO()
main = do
    print $ hardestSubject [("John", "Maths", 5), ("Kennedy", "English", 2), ("Joe", "Programming", 4), ("Claudia", "Programming", 6), ("Sam", "Maths", 4), ("Jenn", "English", 2)] == "English"
    print $ hardestSubject [("John", "Maths", 5), ("Kennedy", "English", 5), ("Joe", "Programming", 4), ("Claudia", "Programming", 6), ("Sam", "Maths", 4), ("Jenn", "English", 5)] == "Maths"



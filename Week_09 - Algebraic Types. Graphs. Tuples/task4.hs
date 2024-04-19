{-
Алгебричният тип `Movie` представя данните за даден филм
- неговото име, годината му на излизане,
продължителността му, името на студиото, което
го e създало и номерът на продуцента. Алгебричният тип
`MovieStar` представя данните за даден актьор -
неговото име и пол. Алгебричният тип `StarsIn` свързва
име на актьор с филм, в който той участва. Алгебричният
тип `Studio` представя данните за дадено студио -
неговото име и номера на неговия президент (който е
и продуцент). Алгебричният тип `MovieExec` представя
данните за даден продуцент - неговото име, номер и нетна
стойност на активите. Стойностите от тип `MovieDB` са
вектори с пет елемента - списъци, които представят базата
от данни. Петте списъка съдържат съответно всички налични
данни за филми, актьори, участия на актьори във филми,
студиа и продуценти.

Напишете следните функции:

- функция, която получава като аргументи име на студио,
година и база от данни за филми и извежда имената на
актьорите, участвали във филми, продуцирани от зададеното
студио през зададената година;

- функция, която по име на студио и база от данни за
филми извежда името на президента на зададеното студио.
-}

main :: IO()
main = do
    print $ getFeaturedStars "MGM" 1995 db == ["Jack Nicholson", "Sandra Bulloc"]
    print $ getFeaturedStars "USA Entertainm." 2001 db == ["Billy Bob Thornton", "Scarlett Johansson", "Orlando Bloom", "Cate Blanchett", "Liv Tyler"]

    print $ getPresident "Paramount" db -- == "Calvin Coolidge"
    print $ getPresident "Fox" db -- == "Ted Turner"
    print $ getPresident "USA Entertainm." db -- == "Stephen Spielberg"

getPresident :: Name -> MovieDB -> Name
getPresident studioName (movies, _, _, _, mes) = concat [[nameProd | (MovieExec nameProd number _) <- mes, number == preNumber] | (Movie _ _ _ cStudio preNumber) <- movies, cStudio == studioName]

getFeaturedStars :: Name -> Year -> MovieDB -> [Name]
getFeaturedStars studio year (movies, _, starsIn, _, _) = concat [ [actorName | (StarsIn actorName movieTitle) <- starsIn, title == movieTitle] |
    (Movie title cYear _ cStudio _) <- movies,
    studio == cStudio && year == cYear]

type Name = String
type Title = String
type Address = String
type Year = Int
type Gender = Char
type Length = Int

type ProducerID = Int
type Networth = Integer

data Movie = Movie Title Year Length Name ProducerID
 deriving (Show)
data MovieStar = MovieStar Name Gender
 deriving (Show)
data StarsIn = StarsIn Name Title
 deriving (Show)

data Studio = Studio Name Int
 deriving (Show)
data MovieExec = MovieExec Name ProducerID Networth
 deriving (Show)

type MovieDB = ([Movie], [MovieStar], [StarsIn], [Studio], [MovieExec])

studios :: [Studio]
studios = [Studio "Disney" 199,
    Studio "USA Entertainm." 222,
    Studio "Fox" 333,
    Studio "Paramount" 123,
    Studio "MGM" 555]

movieExecs :: [MovieExec]
movieExecs = [MovieExec "George Lucas" 555 200000000,
    MovieExec "Ted Turner" 333 125000000,
    MovieExec "Stephen Spielberg" 222 100000000,
    MovieExec "Merv Griffin" 199 112000000,
    MovieExec "Calvin Coolidge" 123 20000000]

movies :: [Movie]
movies = [Movie "Pretty Woman" 1990 119 "Disney" 199,
    Movie "The Man Who Wasn't There" 2001 116 "USA Entertainm." 555,
    Movie "Logan's run" 1976 120 "Fox" 333,
    Movie "Star Wars" 1977 124 "Fox" 555,
    Movie "Empire Strikes Back" 1980 111 "Fox" 555,
    Movie "Star Trek" 1979 132 "Paramount" 222,
    Movie "Star Trek: Nemesis" 2002 116 "Paramount" 123,
    Movie "Terms of Endearment" 1983 132 "MGM" 123,
    Movie "The Usual Suspects" 1995 106 "MGM" 199,
    Movie "Gone With the Wind" 1938 238 "MGM" 123,
    Movie "The Fellowship of the Ring" 2001 178 "USA Entertainm." 222]

stars :: [MovieStar]
stars = [MovieStar "Jane Fonda" 'F',
    MovieStar "Alec Baldwin" 'M',
    MovieStar "Kim Basinger" 'F',
    MovieStar "Harrison Ford" 'M',
    MovieStar "Debra Winger" 'F',
    MovieStar "Jack Nicholson" 'M',
    MovieStar "Sandra Bullock" 'F',
    MovieStar "Orlando Bloom" 'M',
    MovieStar "Cate Blanchett" 'F',
    MovieStar "Liv Tyler" 'F',
    MovieStar "Billy Bob Thornton" 'M',
    MovieStar "Scarlett Johansson" 'F']

starsIn :: [StarsIn]
starsIn = [StarsIn "Kim Basinger" "Star Wars",
    StarsIn "Alec Baldwin" "Star Wars",
    StarsIn "Harrison Ford" "Star Wars",
    StarsIn "Harrison Ford" "Empire Strikes Back",
    StarsIn "Jack Nicholson" "The Usual Suspects",
    StarsIn "Jane Fonda" "Terms of Endearment",
    StarsIn "Jack Nicholson" "Terms of Endearment",
    StarsIn "Sandra Bulloc" "The Usual Suspects",
    StarsIn "Billy Bob Thornton" "The Man Who Wasn't There",
    StarsIn "Scarlett Johansson" "The Man Who Wasn't There",
    StarsIn "Orlando Bloom" "The Fellowship of the Ring",
    StarsIn "Cate Blanchett" "The Fellowship of the Ring",
    StarsIn "Liv Tyler" "The Fellowship of the Ring"]

db :: MovieDB
db = (movies, stars, starsIn, studios, movieExecs)

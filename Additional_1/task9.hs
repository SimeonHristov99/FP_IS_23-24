-- Нека са дадени две едноаргументни числени функции f и g и списък от числени
-- стойности xs. Ще казваме, че функцията f доминира g върху множеството xs,
-- ако за всяко x ∈ xs е вярно, че |f(x)| ≥ |g(x)|.
-- Дефинирайте функцията dominates f g xs, която връща резултата
-- от проверката дали функцията
-- f доминира g върху множеството xs.

main :: IO()
main = do
    print $ dominates (\x -> x + 1) (\x -> x + 2) [1, 2, 3, 4, 5] == False
    print $ dominates (\x -> x * 3) (\x -> x + 2) [1, 2, 3, 4, 5] == True


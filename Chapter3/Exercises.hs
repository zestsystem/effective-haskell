module Chapter3.Exercises where

-- Undefined
-- My Response: Because undefined works for all types and function is also a type.
-- Answer: why are there so many different ways to define an expression using undefined”.
--         Since undefined can be used anywhere, for an expression of any type, it’s extremely flexible.
--         You can use undefined almost anywhere, to fill in for almost anything, even things that wouldn’t ever make sense with real code.
--         That’s one of the drawbacks of this technique.
--         When you allow the compiler to infer the type of undefined, you may find that you’re getting a false sense of security when your program compiles.
--         It’s useful frequently enough that you shouldn’t necessarily avoid it altogether, but beware of the drawbacks.

-- Understanding Function By Their Type
-- 1. Data.Tuple.swap :: (a,b) -> (b,a)
swap :: (a, b) -> (b, a)
swap (a, b) = (b, a)

swap' :: (a, b) -> (b, a)
swap' input =
  let a = fst input
      b = snd input
   in (b, a)

-- 2 . concat :: [[a]] -> [a]
concat :: [[a]] -> [a]
concat = foldr (<>) []

-- 3. id :: a -> a
id :: a -> a
id a = a

-- Filling In Type Holes
mapApply :: [a -> b] -> [a] -> [b]
mapApply toApply =
  concatMap (\input -> map ($ input) toApply)

example :: [Int] -> String
example = mapApply $ map (lookupLetter .) offsets
  where
    letters :: [Char]
    letters = ['a' .. 'z']

    lookupLetter :: Int -> Char
    lookupLetter n = letters !! n

    offsets :: [Int -> Int]
    offsets = [rot13, swap10, mixupVowels]

    rot13 :: Int -> Int
    rot13 n = (n + 13) `rem` 26

    swap10 :: Int -> Int
    swap10 n
      | n <= 10 = n + 10
      | n <= 20 = n - 10
      | otherwise = n

    mixupVowels :: Int -> Int
    mixupVowels n =
      case n of
        0 -> 8
        4 -> 14
        8 -> 20
        14 -> 0
        20 -> 4
        n' -> n'

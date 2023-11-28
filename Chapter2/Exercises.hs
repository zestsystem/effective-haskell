module Exercises where

-- Reversing a List with Folds
reverseWithFoldl lst =
  foldl (\x acc -> acc : x) [] lst

reverseWithFoldr lst =
  foldr (\x f acc -> f (x : acc)) id lst []

-- Zipping List
zipWithNoListComprehension f as bs
  | (a : as') <- as, (b : bs') <- bs = f a b : zipWithNoListComprehension f as' bs'

zipWithFoldl f as bs = reverse $ foldl applyFunction [] zipped
  where
    zipped = zip as bs
    applyFunction accumulator (a, b) = f a b : accumulator

zipWithListComprehension f as bs = [f a b | (a, b) <- zip as bs]

-- Implementing Concat Map
concatMapFoldr f = foldr (\x acc -> f x <> acc) []

concatMapFoldl f = foldl (\acc x -> acc <> f x) []

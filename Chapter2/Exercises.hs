module Exercises where

-- Reversing a List with Folds
reverseWithFoldl lst =
  foldl (\x acc -> acc : x) [] lst

reverseWithFoldr lst =
  foldr (\x f acc -> f (x : acc)) id lst []

-- Zipping List
zipWithNoListComprehension f (x : xs) (y : ys) = f x y : zipWithNoListComprehension f xs ys
zipWithNoListComprehension _ _ _ = []

zipWithListComprehension f xs ys = [f x y | (x, y) <- zip xs ys]

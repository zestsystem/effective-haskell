module Exercises where

-- Reversing a List with Folds
reverseWithFoldl lst =
  foldl (\x acc -> acc : x) [] lst

reverseWithFoldr lst =
  foldr (\x f acc -> f (x : acc)) id lst []

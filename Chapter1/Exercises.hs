module Exercises where

-- Factorials
factorial n
  | n == 1 = n
  | otherwise = n * factorial (n - 1)

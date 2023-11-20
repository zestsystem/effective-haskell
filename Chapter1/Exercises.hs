module Exercises where

-- Factorials
factorial n
  | n == 1 = n
  | otherwise = n * factorial (n - 1)

-- The Fibonacci Sequence
fibonacci n
  | n == 0 = 0
  | n == 1 = 1
  | otherwise = fibonacci (n - 2) + fibonacci (n - 1)

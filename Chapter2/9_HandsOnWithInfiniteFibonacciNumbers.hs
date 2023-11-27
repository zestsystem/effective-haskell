module HandsOnWithInfiniteFibonacciNumbers where

fib n
  | n == 0 = 0
  | n == 1 = 1
  | otherwise = (fib $ n - 1) + (fib $ n - 2)

fibs = 0 : 1 : helper fibs (tail fibs)
  where
    helper (a : as) (b : bs) =
      a + b : helper as bs

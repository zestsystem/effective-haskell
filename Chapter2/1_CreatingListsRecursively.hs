module CreatingListsRecursively where

countdown n =
  if n <= 0
    then []
    else n : countdown (n - 1)

factors num =
  factors' num 2
  where
    factors' num fact
      | num == 1 = []
      | (num `rem` fact) == 0 = fact : factors' (num `div` fact) fact
      | otherwise = factors' num (fact + 1)

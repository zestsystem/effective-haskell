module TransformingListElements where

doubleElems nums = foldr doubleElem []
  where
    doubleElem num lst = (2 * num) : lst

doubleElems' elems = foldr (applyElem (* 2)) [] elems
  where
    applyElem f elem accumulator = f elem : accumulator

map' f = foldr (applyElem f) []
  where
    applyElem f elem accumulator = f elem : accumulator

doubleWithMap elems = map' (* 2) elems

map'' f xs =
  if null xs
    then []
    else f (head xs) : map'' f (tail xs)

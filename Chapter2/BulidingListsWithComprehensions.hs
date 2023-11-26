module BuildingListsWithComprehension where

double = [2 * num | num <- [0 .. 10]]

doubleOdds = [2 * num | num <- [0 .. 10], odd num]

doubleOdds' = map (\num -> 2 * num) . filter odd $ [0 .. 10]

pairs as bs =
  let as' = filter (`elem` bs) as
      bs' = filter odd bs
      mkPairs a = map (\b -> (a, b)) bs'
   in concat $ map mkPairs as'

pairsListComprehension as bs =
  [(a, b) | a <- as, b <- bs, a `elem` bs, odd bs]

pairwiseSum xs ys =
  let sumElems pairs =
        let a = fst pairs
            b = snd pairs
         in a + b
   in map sumElems $ zip xs ys

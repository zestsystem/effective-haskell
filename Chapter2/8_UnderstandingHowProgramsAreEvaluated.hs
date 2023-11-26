module UnderstandingHowProgramsAreEvaluated where

radsToDegrees :: Float -> Int
radsToDegrees radians =
  let degrees = cycle [0 .. 359]
      converted = truncate $ (radians * 360) / (2 * pi)
   in degrees !! converted

epicCycle inputList =
  cycleHelper inputList
  where
    cycleHelper [] = epicCycle inputList
    cycleHelper (x : xs) = x : cycleHelper xs

moreEpicCycle inputList =
  inputList <> moreEpicCycle inputList

-- Folds and Infinite Lists
findFirst predicate =
  foldr findHelper []
  where
    findHelper listElement maybeFound
      | predicate listElement = [listElement]
      | otherwise = maybeFound

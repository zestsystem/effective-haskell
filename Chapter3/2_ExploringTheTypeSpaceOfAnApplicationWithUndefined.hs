import Data.List

sumBiggest :: [[Int]] -> String
sumBiggest allNums =
  let getBiggests :: [Int] -> [Int]
      -- getBiggests = undefined
      getBiggests list = foldl (\acc x -> if x > head acc then [x] else acc) [head list] list

      getSmallests :: [Int] -> [Int]
      -- getSmallests = undefined
      getSmallests list = foldl (\acc x -> if x < head acc then [x] else acc) [head list] list

      differences :: ([Int], [Int]) -> Int
      differences (biggest, smallest) = head biggest - head smallest

      allBiggests :: [[Int]]
      allBiggests = map getBiggests allNums

      allSmallests :: [[Int]]
      allSmallests = map getSmallests allNums

      -- By stubbing out our intermediate functions first,
      -- we see an opportunity use builtin zip function
      -- zipSizes :: [[Int]] -> [[Int]] -> [([Int], [Int])]
      -- zipSizes = undefined

      sizePairs :: [([Int], [Int])]
      sizePairs = zip allBiggests allSmallests

      differences' :: [String]
      differences' = map (show . differences) sizePairs
   in Data.List.intercalate "," differences'

showBiggest =
  let biggestInfo = sumBiggest [[1, 1, 2, 3, 4, 4], [1, 2, 5, 5], [-1, 2, 5, -10, 5]]
   in print $ "sumBiggest says: " <> biggestInfo

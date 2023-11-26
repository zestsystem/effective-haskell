module DeconstruingLists where

isBalanced s =
  0 == reduce checkBalance 0 s
  where
    checkBalance count char
      | char == '(' = count + 1
      | char == ')' = count - 1
      | otherwise = count
-- foldl implementation basically
reduce func carryValue lst =
  if null lst
    then carryValue
    else
      let intermediateValue = func carryValue (head lst)
       in reduce func intermediateValue (tail lst)

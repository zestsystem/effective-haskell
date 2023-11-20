module Main where

printSmallNumber num =
  let msg =
        if num < 3
          then "thats a small number"
          else
            if num < 10
              then "the number is a medium number"
              else "the number is a big number"
   in print msg

guardSize num
  | num > 0 =
      let size = "positive"
       in exclaim size
  | num < 3 = exclaim "small"
  | num < 100 = exclaim "medium"
  | otherwise = exclaim "large"
  where
    exclaim message = "that's a " <> message <> " number!"

main = printSmallNumber 3

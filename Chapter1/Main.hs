module Main where

makeGreeting salutation person =
  let messageWithTrailingSpace = salutation <> " "
   in messageWithTrailingSpace <> person

extendedGreeting person =
  let joinWithNewlines a b = a <> "\n" <> b
      helloAndGoodbye hello goodbye =
        let hello' = makeGreeting hello person
            goodbye' = makeGreeting goodbye person
         in joinWithNewlines hello' goodbye'
   in helloAndGoodbye "Hello" "Goodbye"

letWhereGreeting name place =
  let salutation = "Hello" <> name
      meetingInfo = location "Tuesday"
   in salutation <> " " <> meetingInfo
  where
    location day = "we met at " <> place <> " on a " <> day

extendedGreeting' person =
  helloAndGoodbye "Hello" "Goodbye"
  where
    helloAndGoodbye hello goodbye =
      joinWithNewlines hello' goodbye'
      where
        hello' = makeGreeting hello person
        goodbye' = makeGreeting goodbye person
    joinWithNewlines a b = a <> "\n" <> b

main = print $ makeGreeting "Hello" "George"

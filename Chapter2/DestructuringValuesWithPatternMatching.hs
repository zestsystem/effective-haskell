module DestructuringValuesWithPatternMatching where

customGreeting "George" = "Oh, hey George!"
customGreeting name = "Hello, " <> name

-- pattern matching variety!
matchNumber 0 = "zero"
matchNumber n = show n

matchList [1, 2, 3] = "one, two, three"
matchList list = show list

matchTuple ("hello", "world") = "greetings"
matchTuple tuple = show tuple

matchBool True = "yep"
matchBool bool = "this must be false"

matchTuple' ("hello", "world") = "Hello there, you great big world"
matchTuple' ("hello", name) = "Oh hi there, " <> name
matchTuple' (salutation, "George") = "Oh! " <> salutation <> " George"
matchTuple' n = show n

partialFunction 0 = "I only work for 0"
partialFunction impossibleValue =
  error $
    "I only work with 0 but I was called with " <> show impossibleValue

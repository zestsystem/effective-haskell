module FilteringListElements where

checkGuestList guestList name =
  name `elem` guestList

foodCosts =
  [ ("Ren", 10.00),
    ("George", 4.00),
    ("Porter", 27.50)
  ]

partyBudget isAttending =
  foldr (+) 0 . map snd . filter (isAttending . fst)

module AnnotatingValuesWithTypeAnnotation where

pi :: Float
pi = 3.14

one, two :: Int
one = 1
two = 2

three :: Int
three = 3

four :: Int
four = 4

calculateTotalCost basePrice =
    let
        priceWithServiceFee :: Int
        priceWithServiceFee = basePrice + 1
        customaryTip = 7 :: Int
     in
        priceWithServiceFee + customaryTip

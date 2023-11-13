module Main where

makeGreeting salutation person =
  salutation <> " " <> person

greetPerson = makeGreeting "Hello"

enthusiasticGreeting salutation =
  makeGreeting (salutation <> "!")

main = print "no salutation to show yet"

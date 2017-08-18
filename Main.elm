module Main exposing (main)

import Html exposing(..)

fruitList : List String
fruitList =
  [ "apple"
  , "banana"
  , "strawberry"
  , "peach"
  , "melon"
  ]

dropdownItem : String -> Html a
dropdownItem fruit =
  li [] [ text fruit ]

main : Html a
main =
  ul [] (List.map dropdownItem fruitList)

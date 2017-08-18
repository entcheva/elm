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

view : List String -> Html a
view fruits =
  ul [] (List.map dropdownItem fruits)

main : Html a
main =
  view fruitList

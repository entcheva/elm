module Main exposing (main)

import Html exposing(..)

type Status
  = Open
  | Closed

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

view : { status: Status, items : List String } -> Html a
view model =
  ul [] (List.map dropdownItem model.items)

main : Html a
main =
  view { status = Open, items = fruitList }

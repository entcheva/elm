module Main exposing (main)


import Html exposing(..)
import Html.Events exposing (onClick)


main =
  Html.beginnerProgram
    { model = initialModel
    , view = view
    , update = update
    }


type Status
  = Open
  | Closed


type alias Model =
  { status : Status, items : List String }


initialModel : Model
initialModel = { status = Open, items = fruitList }


fruitList : List String
fruitList =
  [ "apple"
  , "banana"
  , "strawberry"
  , "peach"
  , "melon"
  ]


view : Model -> Html Msg
view model =
  case model.status of
  Open ->
    viewOpen model

  Closed ->
    viewClosed


viewOpen : Model -> Html Msg
viewOpen model =
  div []
    [ p  [ onClick CloseDropdown ] [ text "Click to toggle" ]
    , ul [] (List.map dropdownItem model.items)
    ]


viewClosed : Html Msg
viewClosed =
  div []
    [ p [ onClick OpenDropdown ] [ text "Click to toggle" ]
    ]


dropdownItem : String -> Html a
dropdownItem value =
  li [] [ text value ]


type Msg = OpenDropdown | CloseDropdown


update : Msg -> Model -> Model
update msg model =
  case msg of
    CloseDropdown -> { model | status = Closed }

    OpenDropdown -> { model | status = Open }

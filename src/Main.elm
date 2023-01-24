module Main exposing (..)

import Browser
import Css exposing (..)
import Html exposing (text)
import Html.Events exposing (onClick)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)


main =
    Browser.sandbox { init = { value = 0 }, update = update, view = view >> toUnstyled }


type Msg
    = Increment
    | Decrement



-- MODEL


type alias Model =
    { value : Int
    }


homeLink : List (Attribute msg) -> List (Html msg) -> Html msg
homeLink =
    styled div
        [ color (rgb 0 0 0)
        , Css.property "font-family" "Dongle"
        ]


header : List (Attribute msg) -> List (Html msg) -> Html msg
header =
    styled div
        [ Css.height (px 150)
        , Css.property "padding" "0 20px"
        , Css.property "display" "grid"
        , Css.property "grid-template-rows" "1fr"
        , Css.property "grid-template-columns" "1fr"
        , color (rgb 250 0 0)
        ]


appContainer : List (Attribute msg) -> List (Html msg) -> Html msg
appContainer =
    styled div
        [ Css.height (vh 100)
        , Css.property "background-color" "rgb(250 250 250 / 80%)"
        ]


update msg model =
    case msg of
        Increment ->
            { value = model.value + 1
            }

        Decrement ->
            { value = model.value - 1
            }


view model =
    appContainer []
        [ header []
            [ homeLink []
                [ Html.Styled.text "Something"
                ]
            ]
        ]

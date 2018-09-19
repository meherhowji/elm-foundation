module Foundation.Grid
    exposing
        ( container
        , containerFluid
        , containerFull
        , gridx
        )

import Html exposing (Html, div, Attribute)
import Html.Attributes exposing (class, classList)


container : List (Attribute msg) -> List (Html msg) -> Html msg
container attributes children =
    div ([ class "grid-container" ] ++ attributes) children

containerFluid : List (Attribute msg) -> List (Html msg) -> Html msg
containerFluid attributes children =
    div ([ class "grid-container fluid" ] ++ attributes) children


containerFull : List (Attribute msg) -> List (Html msg) -> Html msg
containerFull attributes children =
    div ([ class "grid-container full" ] ++ attributes) children


gridx : List (Attribute msg) -> List (Html msg) -> Html msg
gridx attributes children =
    div ([ class "grid-x" ] ++ attributes) children

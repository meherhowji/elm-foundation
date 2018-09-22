module Foundation.Grid exposing ( container
        , containerFluid
        , containerFull
        , grid
        , cell
    )
import Foundation.Classnames exposing (..)
import String exposing (..)

import Html exposing (Html, div, Attribute)
import Html.Attributes exposing (class, classList)


container : List (Attribute msg) -> List (Html msg) -> Html msg
container attributes children =
    div ([ class gridContainer ] ++ attributes) children

containerFluid : List (Attribute msg) -> List (Html msg) -> Html msg
containerFluid attributes children =
    div ([ class gridContainerFluid ] ++ attributes) children


containerFull : List (Attribute msg) -> List (Html msg) -> Html msg
containerFull attributes children =
    div ([ class gridContainerFull ] ++ attributes) children


grid : List (String) -> List (Html msg) -> Html msg
grid classes children=
    div
    ([ class (join " " classes) ])
    children

cell : List (String) -> List (Attribute msg) -> List (Html msg) -> Html msg
cell classes attributes children=
    div
    ([ class ("cell " ++ (join " " classes)) ] ++ attributes)
    children


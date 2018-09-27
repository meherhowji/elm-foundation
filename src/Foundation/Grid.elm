module Foundation.Grid exposing ( container
        , grid
        , cell
    )
import Foundation.Classnames exposing (..)
import String exposing (..)

import Html exposing (Html, div, Attribute)
import Html.Attributes exposing (class, classList)

type ContainerWidth
    = Normal
    | Full
    | Fluid

type Config =
    Container
    | Direction
    | Gutter

container : ContainerWidth -> Html msg
container width =
    div ([ class (if width == Full then gridContainerFull else gridContainerFluid)]) []

grid : List (Config) -> List (Html msg) -> Html msg
grid classes children=
    div
    ([])
    children


-- TODO: refactor
cell : List (String) -> List (Attribute msg) -> List (Html msg) -> Html msg
cell classes attributes children=
    div
    ([ class ("cell " ++ (join " " classes)) ] ++ attributes)
    children


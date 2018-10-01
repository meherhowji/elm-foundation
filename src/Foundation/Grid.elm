module Foundation.Grid exposing (Config(..), ContainerWidth(..), HorizontalOrVertical(..), Spacing(..), container, grid, cell, direction, gutter)
import Foundation.Classnames exposing (..)

import Html exposing (Html, div, Attribute, text)
import Html.Attributes exposing (class, classList)
import Debug exposing (log)

type ContainerWidth =  Full | Fluid
type HorizontalOrVertical = X | Y
type Spacing = Margin | Padding

type Config = Container
                | Direction HorizontalOrVertical
                | Gutter Spacing


gutter : Spacing -> String
gutter space =
    case space of
        Margin -> "margin-x"
        Padding -> "padding-x"


direction : HorizontalOrVertical -> String
direction axis =
    case axis of
        X -> "grid-x"
        Y -> "grid-y"


container : ContainerWidth -> String
container width =
    case width of
        Full -> "full"
        Fluid -> "fluid"


cell : List (Attribute msg) -> List (Html msg) -> Html msg
cell attributes children =
    div ([ class "cell" ] ++ attributes) children


grid : List (String) -> List (Html msg) -> Html msg
grid config children =
    let
        _ = Debug.log "DEBUG:: config list as string" config
     in
        div [] children

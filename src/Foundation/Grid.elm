module Foundation.Grid exposing (Config(..), ContainerWidth(..), HorizontalOrVertical(..), Spacing(..), container, grid, cell, direction, gutter)
import Foundation.Classnames exposing (..)

import Html exposing (Html, div, Attribute, text)
import Html.Attributes exposing (class, classList)
import Debug exposing (log)

type ContainerWidth =  Full | Fluid
type HorizontalOrVertical = X | Y
type Spacing = Margin | Padding


type Config = Container ContainerWidth
                | Direction HorizontalOrVertical
                | Gutter Spacing


gutter : Spacing -> Attribute msg
gutter space =
    case space of
        Margin -> class "margin-x"
        Padding -> class "padding-x"


direction : HorizontalOrVertical -> Attribute msg
direction axis =
    case axis of
        X -> class "grid-x"
        Y -> class "grid-y"


container : ContainerWidth -> Attribute msg
container width =
    case width of
        Full -> class "full"
        Fluid -> class "fluid"


cell : List (Attribute msg) -> List (Html msg) -> Html msg
cell attributes children =
    div ([ class "cell" ] ++ attributes) children


grid : List (Attribute msg) -> List (Html msg) -> Html msg
grid config children =
    let
        _ = Debug.log "DEBUG:: config list as string" config
     in
        div [] children

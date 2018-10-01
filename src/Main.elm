module Main exposing (..)

import Browser
import Html exposing (..)

import Foundation.CDN as CDN
import Foundation.Grid exposing (container, grid, cell, direction, gutter, ContainerWidth(..), Spacing(..), HorizontalOrVertical(..), direction, gutter, cell)
import Foundation.Classnames exposing (..)


---- PROGRAM ----

main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = \_ -> init
        , update = update
        , subscriptions = always Sub.none
        }


---- MODEL ----


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )



---- UPDATE ----

type Msg
    = NoOp

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----

view : Model -> Html Msg
view model =
        div []
            [ CDN.stylesheet
            , CDN.stylesheetFont
            , CDN.stylesheetTheme
            , grid
                [ container Fluid, direction X, gutter Margin ]
                [ cell [] [ text "cell" ]
                , cell [] [ text "cell" ]
                , cell [] [ text "cell" ]
                ]
            ]


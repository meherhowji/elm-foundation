module Main exposing (..)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)

import Foundation.CDN as CDN
import Foundation.Grid exposing (..)
import Foundation.Classnames exposing (..)



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
    container Full
            [ CDN.stylesheet
            , CDN.stylesheetFont
            , CDN.stylesheetTheme 
            , h1 [] 
                [ text "Elm Foundation"
                  , h4 [] [text "XY Grid"]
                ]
            , grid [gridX, gridMarginx, gridPaddingy, gridMarginy]
                [ cell [medium1, large1, small1] 
                  [text "1"]
                , cell [medium2, large2, small2] 
                  [text "2"]
                , cell [medium1, large1, small1] 
                  [text "1"]
                , cell [medium2, large2, small2] 
                  [text "2"]
                , cell [medium1, large1, small1] 
                  [text "1"]
                , cell [medium2, large2, small2] 
                  [text "2"]
                , cell [medium1, large1, small1] 
                  [text "1"]
                , cell [medium2, large2, small2] 
                  [text "2"]
                ]
            , grid [gridX, gridMarginx, gridPaddingy, gridMarginy]
                [ cell [medium2, large2, small2] 
                  [text "2"]
                , cell [medium2, large2, small2] 
                  [text "2"]
                , cell [medium2, large2, small2] 
                  [text "2"]
                , cell [medium2, large2, small2] 
                  [text "2"]
                , cell [medium2, large2, small2] 
                  [text "2"]
                , cell [medium2, large2, small2] 
                  [text "2"]
                ]
            , grid [gridX, gridMarginx, gridPaddingy, gridMarginy]
                [ cell [medium4, large4, small4] 
                  [text "4"]
                , cell [medium4, large4, small4] 
                  [text "4"]
                , cell [medium4, large4, small4] 
                  [text "4"]
                ]
            , grid [gridX, gridMarginx, gridPaddingy, gridMarginy]
                [ cell [medium6, large6, small6] [] 
                  [text "MEDIUM 6"]
                , cell [medium6, large6, small6] ["data"] 
                  [text "MEDIUM 6"]
                ]
            ] 


---- PROGRAM ----

main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = \_ -> init
        , update = update
        , subscriptions = always Sub.none
        }

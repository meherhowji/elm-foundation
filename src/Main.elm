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
    container []
            [ CDN.stylesheet
            , h2 [] [text "Foundation Grid XY"]
            , grid [gridX, gridPaddingx]
                [ cell [medium6, large6, small6] 
                  [text "Milky Way"]
                , cell [medium6, large6, small6] 
                  [text "Andromeda"]
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

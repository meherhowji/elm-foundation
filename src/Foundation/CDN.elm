module Foundation.CDN exposing (stylesheet, stylesheetTheme, stylesheetFont)

import Html exposing (Html, node)
import Html.Attributes exposing (rel, href)

stylesheet : Html msg
stylesheet =
    node "link"
        [ rel "stylesheet"
        , href "https://cdnjs.cloudflare.com/ajax/libs/foundation/6.5.0-rc.3/css/foundation.css"
        ]
        []

stylesheetFont : Html msg
stylesheetFont = 
    node "link"
        [ rel "stylesheet"
        , href "https://fonts.googleapis.com/css?family=Knewave|Roboto:500" ]
        []

stylesheetTheme : Html msg
stylesheetTheme =
    node "link"
        [ rel "stylesheet"
        , href "grid-colorise.css"
        ]
        []

module Foundation.CDN exposing (stylesheet)

import Html exposing (Html, node)
import Html.Attributes exposing (rel, href)

stylesheet : Html msg
stylesheet =
    node "link"
        [ rel "stylesheet"
        , href "./foundation-xy.css"
        ]
        []

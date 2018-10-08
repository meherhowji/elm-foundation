module FoundationTests exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)
import Foundation.Classnames exposing (..)


suite : Test
suite =
    describe "Classname Tests"
        [ test "Medium Classname" <|
            \_ ->
                Expect.equal gridX "grid-x"
        ]

module Main exposing (..)

import Html
import String


wordCount =
    String.words >> List.length


main : Html.Html msg
main =
    let
        sentence =
            "Elm is pretty functional programming language. When I'm improve in Elm, I'm understand FP better"
    in
    sentence
        ++
        |> wordCount
        |> toString
        |> Html.text

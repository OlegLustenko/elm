module Main exposing (..)

import Html
import String


longSentence : String
longSentence =
    "Elm is pretty functional programming language. When I'm improve in Elm, I'm understand FP better"


wordCount =
    String.words >> List.length


main : Html.Html msg
main =
    longSentence
        |> wordCount
        |> toString
        |> Html.text

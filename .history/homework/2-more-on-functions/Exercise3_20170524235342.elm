module Main exposing (..)

import Html
import String


longSentence : String
longSentence =
    "Elm is pretty functional programming language. When I'm improve in Elm, I'm understand FP better"



-- split : String -> String -> List String


split someString =
    String.split someString


listLength someList =
    List.length someList


wordCount =
    split >> List.length


main : Html.Html msg
main =
    "Here is a test sentence"
        |> wordCount
        |> toString
        |> Html.text

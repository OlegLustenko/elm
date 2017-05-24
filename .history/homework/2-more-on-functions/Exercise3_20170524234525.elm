module Main exposing (..)

import Html


longSentence : String
longSentence =
    "Elm is pretty functional programming language. When I'm improve in Elm, I'm understand FP better"


split : String -> String -> List String
split someString =
    String.split someString

listLength : List String -> 

main : Html.Html msg
main =
    Html.text "Hello world"

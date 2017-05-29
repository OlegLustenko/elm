module Main exposing (..)

import Html
import String
import List


wordCount =
    String.words >> List.length
    -- >> - is composition

main : Html.Html msg
main =
    let
        sentence =
            "Elm is pretty functional programming language. When I'm improve in Elm, I'm understand FP better"
    in
    sentence
        |> wordCount
        |> (\length ->
                "sentence: "
                    ++ sentence
                    ++ " with length: "
                    ++ toString length
                    |> Html.text
           )

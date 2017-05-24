module Main exposing (..)

import Html
import String


upperCase : String -> Int -> String
upperCase name maxLength =
    if String.length name > maxLength then
        String.toUpper name
    else
        name


main : Html.Html msg
main =
    let
        name =
            "Oleg Lustenko"

        length =
            String.length name
    in
    upperCase name length
        ++ " - name length: "
        ++ toString length
        |> Html.text

module Main exposing (..)

import Html


upperCase : String -> String
upperCase name =
    if String.length name > 10 then
        String.toUpper name
    else
        name


user =
    upperCase "Oleg Lustenko"


main =
    Html.text (upperCase "Oleg Lustenko")

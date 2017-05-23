module Main exposing (..)

import Html


upperCase : String -> String
upperCase name =
    if name.length > 10 then
        String.toUpper name
    else
        name


main =
    Html.text "asd"

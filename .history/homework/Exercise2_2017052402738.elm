module Main exposing (..)

import Html


upperCase : String
upperCase name =
    if String.length name > 10 then
        String.toUpper name
    else
        name


main =
    Html.text upperCase "Oleg Lustenko"

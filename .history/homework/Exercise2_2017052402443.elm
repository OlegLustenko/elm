module Main exposing (..)

import Html


upperCase name =
    if name.length > 10 then
        toUpper name
    else
        name


main =
    Html.text "asd"

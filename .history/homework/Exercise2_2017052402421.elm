module Main exposing (..)

import Html


upperCase name =
    if name.length > 10 then
        String.toUpperCase name
    else
        name


main =
    Html.text "asd"

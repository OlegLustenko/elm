module Main exposing (String)

import Html


upperCase name =
    if name.length > 10 then
        toUpperCase name
    else
        name


main =
    Html.text "asd"

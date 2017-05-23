module Main exposing (..)

import Html


upperCase : String -> String
upperCase name =
    if String.length name > 10 then
        String.toUpper name
    else
        name


user : String
user =
    upperCase "Oleg Lustenko"


main : String
main =
    Html.text user

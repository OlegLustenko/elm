module Main exposing (..)

import Html


upperCase : String -> String 
upperCase name maxLength =
    if String.length name > maxLength then
        String.toUpper name
    else
        name


user : String
user =
    upperCase "Oleg Lustenko"


user2 =
    upperCase "Bond"


main : Html.Html msg
main =
    user
        |> Html.text

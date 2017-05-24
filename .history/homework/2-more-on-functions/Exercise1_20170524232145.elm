module Main exposing (..)

import Html


(~=) : String -> String -> Bool
(~=) str1 str2 =
    String.left 1 str1 == String.left 1 str2



-- compareFirstLetter : String String -> Bool


compareFirstLetter str1 str2 =
    str1 ~= str2


user =
    "Oleg"


user2 =
    "Oleg2"


main : Html.Html msg
main =
    Html.text (toString (compareFirstLetter user user2))

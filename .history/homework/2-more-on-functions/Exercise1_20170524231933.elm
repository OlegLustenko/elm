module Main exposing (..)

import Html


(~=) : String -> String -> Bool
(~=) str1 str2 =
    String.left 1 str1 == String.left 1 str2


compareFirstLetter : String -> String -> Bool
compareFirstLetter str1 str2 =
    str1 ~= str2


main : Html.Hext msg
main =
    Html.text "hello world"

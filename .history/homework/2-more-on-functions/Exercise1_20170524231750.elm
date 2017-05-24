module Main exposing (..)

import Html


(~=) str1 str2 =
    String.left 1 str1 == String.left 1 str2


compareFirstLetter str1 str2 =
    str1 ~= str2


main =
    Html.text "hello world"

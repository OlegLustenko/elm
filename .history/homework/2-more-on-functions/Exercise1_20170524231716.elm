module Main exposing (..)

import Html


(~=) str1 str2 =
    String.left 1 str1 == String.left 1 str2

compare


main =
    Html.text "hello world"

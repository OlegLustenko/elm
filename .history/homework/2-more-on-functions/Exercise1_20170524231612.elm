module Main exposing (..)

import Html


(~=) str1 str2 =
    left 1 str1 == left 1 str2


main =
    Html.text "hello world"

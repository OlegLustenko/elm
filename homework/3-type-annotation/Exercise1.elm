module Main exposing (..)

import Html


type alias Item =
    { name : String
    , qty : Int
    , freeQty : Int
    }


type alias CartList =
    List Item


cart : CartList
cart =
    [ { name = "Lemon", qty = 1, freeQty = 0 }
    , { name = "Apple", qty = 5, freeQty = 0 }
    , { name = "Pear", qty = 10, freeQty = 0 }
    ]


discount : Int -> Int -> Item -> Item
discount minQty setFreefreeQty item =
    if item.freeQty == 0 && minQty >= item.qty then
        { item
            | freeQty = setFreefreeQty
        }
    else
        item


newCart : CartList
newCart =
    List.map (discount 5 1 >> discount 10 3) cart


main : Html.Html msg
main =
    Html.text (toString newCart)

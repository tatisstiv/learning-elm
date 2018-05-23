import Html exposing (..)

type alias Item =
    {
        name : String
        , qty : Int
        , freeQty : Int
    }

cart : List Item
cart =
    [ { name = "Lemon", qty = 1, freeQty = 0 }
    , { name = "Apple", qty = 5, freeQty = 0 }
    , { name = "Pear", qty = 10, freeQty = 0 }
    ]

setfreeQty : Item -> Item
setfreeQty item = 
    if item.qty >= 5 && item.qty < 10 then
        { item | freeQty = item.freeQty + 1 }
    else if item.qty >=10 then
        { item | freeQty = item.freeQty + 3 }
    else
        item

newCart : List Item
newCart =
    List.map setfreeQty cart

main : Html msg
main = 
    text (toString newCart)
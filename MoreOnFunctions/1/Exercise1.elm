import Html exposing (text)
import String exposing (..)

(~=) string1 string2 =
    (left 1 string1) == (left 1 string2)

main =
    let
        result =
            "Tatiane" ~= "Txsmin"
    in
        text (toString result)
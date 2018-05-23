module Factorial exposing (..)

import Html exposing (..)

factorial : Int -> Int
factorial n =
    if n <= 2 then
        n
    else
        n * factorial (n-1)

main =
    text (toString (factorial 5))
module Fibonacci exposing (..)

import Html exposing (..)

fibonacci : Int -> Int
fibonacci n =
    if n < 2 then
        n
    else
        fibonacci(n - 2) + fibonacci(n - 1)


main : Html msg
main =
    text (toString(fibonacci 2))
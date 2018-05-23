module Exercise2 exposing (..)

import Html exposing (text)
import String

capitalize : String -> Int -> String
capitalize name maxNameSize = 
    if String.length  name > maxNameSize then
     String.toUpper name
    else
     name

main =
    let
        name =
                "Ana"
        
        length =
                String.length name
    in
        (capitalize name 10)
            ++ " - tamanho do nome: "
            ++ (toString length)
            |> text
        
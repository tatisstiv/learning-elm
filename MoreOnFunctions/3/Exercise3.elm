import Html exposing (text)
import String exposing (..)

wordCount  = 
    String.words >> List.length

main = 
    "Uma frase assim"
        |> wordCount
        |> toString
        |> text
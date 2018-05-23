import Html exposing (text)
import String exposing (left)

(~=) : String -> String -> Bool
(~=) string1 string2 =
    (left 1 string1) == (left 1 string2)

main =
    (~=) "Tatiane" "Yasmin"
        |> toString
        |> text
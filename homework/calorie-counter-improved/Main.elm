module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import String


-- Model


type alias Model =
    { inputState : String
    , totalCalories : Int
    }


initModel : Model
initModel =
    { totalCalories = 0
    , inputState = ""
    }



-- update


type Msg
    = AddCalorie
    | Clear
    | UpdateInputState String


update : Msg -> Model -> Model
update msg model =
    case msg of
        AddCalorie ->
            { model
                | totalCalories = model.totalCalories + (String.toInt model.inputState |> Result.toMaybe |> Maybe.withDefault 0)
                , inputState = ""
            }

        UpdateInputState newValue ->
            { model
                | inputState = newValue
            }

        Clear ->
            initModel



--


view : Model -> Html Msg
view model =
    div []
        [ h3 []
            [ text ("Total Calories: " ++ toString model.totalCalories) ]
        , input [ type_ "text", onInput UpdateInputState, value model.inputState ]
            []
        , button
            [ type_ "button"
            , onClick AddCalorie
            ]
            [ text "Add" ]
        , button
            [ type_ "button"
            , onClick Clear
            ]
            [ text "Clear" ]
        ]


main : Program Never Model Msg
main =
    Html.beginnerProgram
        { model = initModel
        , update = update
        , view = view
        }

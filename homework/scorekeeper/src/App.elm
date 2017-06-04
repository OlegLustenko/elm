module App exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


---- MODEL ----


type alias Model =
    { players : List Player
    , playerName : String -- input player name
    , playerId : Maybe Int -- if player in edit mode we
    , plays : List Play
    }


type alias Player =
    { id : Int
    , name : String
    , points : Int
    }


type alias Play =
    { id : Int
    , playerId : Int
    , name : String
    , points : Int
    }


initModel : Model
initModel =
    { players = []
    , playerName = ""
    , playerId = Nothing
    , plays = []
    }



---- UPDATE ----


type Msg
    = Edit Player
    | Score Player Int
    | Input String
    | Save
    | Cancel
    | DeletePlay Play


update : Msg -> Model -> Model
update msg model =
    case msg of
        Input name ->
            { model | playerName = name }

        Save ->
            { model
                | players =
                    model.players
                        ++ [ { id = List.length model.players, name = model.playerName, points = 0 } ]
                , playerName = ""
            }

        Cancel ->
            { model
                | playerName = ""
                , playerId = Nothing
            }

        _ ->
            model



---- VIEW ----


view : Model -> Html Msg
view model =
    div [ class "scoreboard" ]
        [ h1 [ class "header" ] [ text "Score Keeper" ]
        , playerForm model
        , p [] [ text (toString model) ]
        ]


playerForm : Model -> Html Msg
playerForm model =
    Html.form [ class "Playerform", onSubmit Save ]
        [ input
            [ type_ "text"
            , placeholder "Add/Edit Player..."
            , onInput Input
            , value model.playerName
            ]
            []
        , button
            [ type_ "submit" ]
            [ text "Save" ]
        , button
            [ type_ "button", onClick Cancel ]
            [ text "Cancel" ]
        ]



---- PROGRAM ----
-- main : Program String Model Msg


main : Program Never Model Msg
main =
    Html.beginnerProgram
        { model = initModel
        , view = view
        , update = update
        }

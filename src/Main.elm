module Main exposing (main)

import Browser
import Html.Styled exposing (Html, toUnstyled, div)



---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.document
        { view = \model -> { title = "Elm app", body = [ model |> view |> toUnstyled ] }
        , init = \_ -> init
        , update = update
        , subscriptions = always Sub.none
        }



---- MODEL ----


type alias Model =
    {}


defaultModel : Model
defaultModel =
    {}


init : ( Model, Cmd Msg )
init =
    ( defaultModel, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    div []
        [
        ]

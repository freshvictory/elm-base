module Page.Home exposing (Model, Msg, init, update, view)

import Html.Styled
    exposing
        ( Html
        , div
        , header
        , nav
        )
import Page



-- MODEL


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )



-- UPDATE


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )



-- VIEW


view : Model -> Page.Details Msg
view model =
    { title = "Home"
    , attrs = []
    , body =
        [ viewHeader
        , viewContent
        ]
    }


viewHeader : Html Msg
viewHeader =
    header
        []
        [ nav
            []
            []
        ]


viewContent : Html Msg
viewContent =
    div
        []
        []

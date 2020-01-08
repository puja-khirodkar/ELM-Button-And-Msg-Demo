module Main exposing (..)

import Browser
import Model
import Msg
import Update
import View


main : Program () Model.Model Msg.Msg
main =
    Browser.element
        { init = init
        , view = View.view
        , update = Update.update
        , subscriptions = subscriptions
        }


init : a -> ( Model.Model, Cmd.Cmd Msg.Msg )
init a =
    ( { id = 0, activeRoute = Model.Route0 }, Cmd.none )


subscriptions : Model.Model -> Sub Msg.Msg
subscriptions model =
    Sub.none

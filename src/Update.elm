module Update exposing (..)

import Browser.Navigation
import Element
import Html
import Model
import Msg



-- import Platform.Cmd as Cmd


update : Msg.Msg -> Model.Model -> ( Model.Model, Cmd Msg.Msg )
update msg model =
    case msg of
        Msg.Previous ->
            ( { model | activeRoute = Model.Route1 }, Cmd.none )

        Msg.Next ->
            ( { model | activeRoute = Model.Route2 }, Cmd.none )

        Msg.First ->
            ( { model | activeRoute = Model.Route0 }, Cmd.none )

        Msg.Last ->
            ( { model | activeRoute = Model.Route2 }, Cmd.none )

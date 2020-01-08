module View exposing (..)

-- import Element.Color

import Element exposing (..)
import Element.Background as Background
import Element.Border
import Element.Input as Input exposing (button)
import Html
import Html.Attributes as Attributes exposing (align, height, src)
import Html.Events exposing (onClick)
import Model
import Msg



-- view : Model.Model -> List (Element.Element Msg.Msg)


view : Model.Model -> Html.Html Msg.Msg
view model =
    Element.layout [] <|
        case model.activeRoute of
            Model.Route0 ->
                view0 model

            Model.Route1 ->
                view1 model

            Model.Route2 ->
                view2 model


view0 : Model.Model -> Element Msg.Msg
view0 model =
    let
        attr =
            [ Element.height <| px 50
            , Element.width <| px 50
            , Background.color <| rgb 2.0 5.0 0.0
            , Element.Border.rounded 5
            , Element.Border.color <| rgb 1.0 1.0 1.0
            ]
    in
    column [ spacing 10, width fill ]
        [ Element.image [ centerX ] { src = "flower1.png", description = "Zenia" }
        , Input.button
            [ alignLeft
            , Element.height <| px 50
            , Element.width <| px 50
            , Background.color <| rgb 2.0 5.0 0.0
            , Element.Border.rounded 5
            , Element.Border.color <| rgb 1.0 1.0 1.0
            ]
            { onPress = Just Msg.Previous, label = text "Previous" }
        , Input.button
            [ centerX
            , Element.height <| px 50
            , Element.width <| px 50
            , Background.color <| rgb 2.0 5.0 0.0
            , Element.Border.rounded 5
            , Element.Border.color <| rgb 1.0 1.0 1.0
            ]
            { onPress = Just Msg.Next, label = text "Next" }
        , Input.button
            [ alignLeft
            , Element.height <| px 50
            , Element.width <| px 50
            , Background.color <| rgb 2.0 5.0 0.0
            , Element.Border.rounded 5
            , Element.Border.color <| rgb 1.0 1.0 1.0
            ]
            { onPress = Just Msg.First, label = text "First" }
        , Input.button
            [ alignRight
            , Element.height <| px 50
            , Element.width <| px 50
            , Background.color <| rgb 2.0 5.0 0.0
            , Element.Border.rounded 5
            , Element.Border.color <| rgb 1.0 1.0 1.0
            ]
            { onPress = Just Msg.Last, label = text "Last" }
        ]


view1 : Model.Model -> Element Msg.Msg
view1 model =
    column [ spacing 10, width fill ]
        [ Element.image [ centerX ] { src = "flower2.png", description = "Rose" }
        , Input.button
            [ centerX
            , Element.height <| px 50
            , Element.width <| px 50
            , Background.color <| rgb 2.0 5.0 0.0
            , Element.Border.rounded 5
            , Element.Border.color <| rgb 1.0 1.0 1.0
            ]
            { onPress = Just Msg.Next, label = text "Next" }
        , Input.button
            [ alignRight
            , Element.height <| px 50
            , Element.width <| px 50
            , Background.color <| rgb 2.0 5.0 0.0
            , Element.Border.rounded 5
            , Element.Border.color <| rgb 1.0 1.0 1.0
            ]
            { onPress = Just Msg.Last, label = text "Last" }
        ]


view2 : Model.Model -> Element Msg.Msg
view2 model =
    column [ spacing 10, width fill ]
        [ Element.image [ centerX ] { src = "flower3.png", description = "Lotus" }
        , Input.button
            [ alignLeft
            , Element.height <| px 50
            , Element.width <| px 50
            , Background.color <| rgb 2.0 5.0 0.0
            , Element.Border.rounded 5
            , Element.Border.color <| rgb 1.0 1.0 1.0
            ]
            { onPress = Just Msg.Previous, label = text "Previous" }
        , Input.button
            [ alignRight
            , Element.height <| px 50
            , Element.width <| px 50
            , Background.color <| rgb 2.0 5.0 0.0
            , Element.Border.rounded 5
            , Element.Border.color <| rgb 1.0 1.0 1.0
            ]
            { onPress = Just Msg.First, label = text "First" }
        ]

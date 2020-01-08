module View exposing (..)

-- import Element.Color

import Element exposing (..)
import Element.Background as Background
import Element.Border
import Element.Font
import Element.Input as Input exposing (button)
import Html
import Html.Attributes as Attributes exposing (align, height, src)
import Html.Events exposing (onClick)
import Model
import Msg


attr : List (Element.Attribute Msg.Msg)
attr =
    [ Element.height <| px 50
    , Element.width <| px 100
    , Background.color <| rgb 2.0 2.0 0.0
    , Element.Border.rounded 5
    , Element.Border.color <| rgb 1.0 1.0 1.0
    , padding 10
    , spacing 50
    ]


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
    column [ centerX ]
        [ column [ padding 10, width fill ]
            [ Element.image [ centerX, Element.height <| px 500 ] { src = "flower1.png", description = "Zenia" } ]
        , row [ centerX, spacing 20 ]
            [ Input.button
                attr
                { onPress = Just Msg.Previous, label = text "Previous" }
            , Input.button
                attr
                { onPress = Just Msg.Next, label = text "Next" }
            , Input.button
                attr
                { onPress = Just Msg.First, label = text "First" }
            , Input.button
                attr
                { onPress = Just Msg.Last, label = text "Last" }
            ]
        ]


view1 : Model.Model -> Element Msg.Msg
view1 model =
    column [ centerX ]
        [ column [ padding 10, width fill ]
            [ Element.image [ centerX, Element.height <| px 500 ] { src = "flower2.png", description = "Rose" } ]
        , row [ centerX, spacing 20 ]
            [ Input.button
                attr
                { onPress = Just Msg.Next, label = text "Next" }
            , Input.button
                attr
                { onPress = Just Msg.Last, label = text "Last" }
            ]
        ]


view2 : Model.Model -> Element Msg.Msg
view2 model =
    column [ centerX ]
        [ column [ padding 10, width fill ]
            [ Element.image [ centerX, Element.height <| px 500 ] { src = "flower3.png", description = "Lotus" } ]
        , row [ centerX, spacing 20 ]
            [ Input.button
                attr
                { onPress = Just Msg.Previous, label = text "Previous" }
            , Input.button
                attr
                { onPress = Just Msg.First, label = text "First" }
            ]
        ]

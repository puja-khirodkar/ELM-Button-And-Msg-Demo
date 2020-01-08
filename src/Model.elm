module Model exposing (..)


type alias EmpData =
    { id : Int
    , name : String
    , age : Int
    }


type Routes
    = Route0
    | Route1
    | Route2


type alias Model =
    { id : Int
    , activeRoute : Routes
    }

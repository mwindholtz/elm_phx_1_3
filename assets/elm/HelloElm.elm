module HelloElm exposing (..)

import Html        exposing (..)
import OtherFile   exposing (..)

main = 
  div []
      [ text "Hello From Elm From the HelloElm.elm file !"
      ,  br [] []
      ,  br [] [] 
      , text "Now let try to import another file ..."
      ,  br [] []
      ,  br [] []
      , OtherFile.otherText
      ]

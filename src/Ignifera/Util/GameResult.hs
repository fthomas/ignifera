module Ignifera.Util.GameResult where

import Ignifera.GameResult

showPgnMarker :: GameResult -> String
showPgnMarker r = case r of
  WhiteWon -> "1-0"
  BlackWon -> "0-1"
  Draw     -> "1/2-1/2"
  Other    -> "*"

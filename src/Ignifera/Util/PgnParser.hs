module Ignifera.Util.PgnParser where

import Text.ParserCombinators.Parsec

import Ignifera.GameResult
--import Ignifera.Util.GameResult

terminationMarker :: Parser GameResult
terminationMarker =
  (string "1-0" >> return WhiteWon) <|>
  (string "0-1" >> return BlackWon) <|>
  (string "1/2-1/2" >> return Draw) <|>
  (string "*" >> return Other)

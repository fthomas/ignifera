module Ignifera.GameResult where

import Ignifera.Util

data GameResult = WhiteWon | BlackWon | Draw | Other
  deriving (Bounded, Enum, Eq, Read, Show)

allGameResults :: [GameResult]
allGameResults = allValues

module Ignifera.GameResult where

data GameResult = WhiteWon | BlackWon | Draw | Other
  deriving (Eq, Read, Show)

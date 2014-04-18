module Ignifera.Color where

data Color = White | Black
  deriving (Eq, Read, Show)

instance Ord Color where
  compare White Black = GT
  compare Black White = LT
  compare _     _     = EQ

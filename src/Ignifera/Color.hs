module Ignifera.Color where

import Ignifera.Util

data Color = Black | White
  deriving (Bounded, Enum, Eq, Ord, Read, Show)

allColors :: [Color]
allColors = allValues

module Ignifera.Draw where

import Ignifera.Square

data Draw = Draw Square Square
  deriving (Eq, Read, Show)

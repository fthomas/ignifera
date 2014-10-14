module Ignifera.Piece where

import Ignifera.Color
import Ignifera.PieceType

data Piece = Piece Color PieceType
  deriving (Eq, Read, Show)

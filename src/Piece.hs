module Piece where

import Color
import PieceType

data Piece = Piece Color PieceType
  deriving (Eq, Read, Show)

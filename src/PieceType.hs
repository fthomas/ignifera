module PieceType where

data PieceType = King | Queen | Rook | Bishop | Knight | Pawn
  deriving (Eq, Read, Show)

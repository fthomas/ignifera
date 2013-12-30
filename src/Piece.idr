module Piece

import Color

data PieceType = King | Queen | Rook | Bishop | Knight | Pawn

instance Eq PieceType where
  King   == King   = True
  Queen  == Queen  = True
  Rook   == Rook   = True
  Bishop == Bishop = True
  Knight == Knight = True
  Pawn   == Pawn   = True
  _      == _      = False

xxx : PieceType -> Bool
xxx pt = List.elem pt [King, Rook]

yyy : PieceType -> Bool
yyy pt = List.elem pt [Queen, Rook, Bishop, Knight]


data Piece : Color -> PieceType -> Type

{-# Language DataKinds, GADTs #-}

module Piece where

import Color

data PieceType = King | Queen | Rook | Bishop | Knight | Pawn
  deriving (Eq, Read, Show)

data Piece c t where
  WhiteKing   :: Piece White King
  WhiteQueen  :: Piece White Queen
  WhiteRook   :: Piece White Rook
  WhiteBishop :: Piece White Bishop
  WhiteKnight :: Piece White Knight
  WhitePawn   :: Piece White Pawn

  BlackKing   :: Piece Black King
  BlackQueen  :: Piece Black Queen
  BlackRook   :: Piece Black Rook
  BlackBishop :: Piece Black Bishop
  BlackKnight :: Piece Black Knight
  BlackPawn   :: Piece Black Pawn


g :: Piece c t -> Piece (Opposite c) t -> Bool
g _ _ = True

h :: Piece c Pawn -> Bool
h _ = True

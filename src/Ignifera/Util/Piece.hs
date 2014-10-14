module Ignifera.Util.Piece where

import Ignifera.Color
import Ignifera.Piece
import Ignifera.PieceType
import Ignifera.Util.PieceAbbr

centipawns :: PieceType -> Int
centipawns pieceType = case pieceType of
  King   -> 100000000
  Queen  -> 900
  Rook   -> 500
  Bishop -> 300
  Knight -> 300
  Pawn   -> 100

readFigurine :: Char -> Maybe Piece
readFigurine char = lookup char
  [ ('♔', whiteKing  )
  , ('♕', whiteQueen )
  , ('♖', whiteRook  )
  , ('♗', whiteBishop)
  , ('♘', whiteKnight)
  , ('♙', whitePawn  )
  , ('♚', blackKing  )
  , ('♛', blackQueen )
  , ('♜', blackRook  )
  , ('♝', blackBishop)
  , ('♞', blackKnight)
  , ('♟', blackPawn  ) ]

showFigurine :: Piece -> Char
showFigurine piece = case piece of
  Piece White King   -> '♔'
  Piece White Queen  -> '♕'
  Piece White Rook   -> '♖'
  Piece White Bishop -> '♗'
  Piece White Knight -> '♘'
  Piece White Pawn   -> '♙'
  Piece Black King   -> '♚'
  Piece Black Queen  -> '♛'
  Piece Black Rook   -> '♜'
  Piece Black Bishop -> '♝'
  Piece Black Knight -> '♞'
  Piece Black Pawn   -> '♟'

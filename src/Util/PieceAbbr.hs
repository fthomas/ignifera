module Util.PieceAbbr where

import Color
import Piece
import PieceType

king   = \c -> Piece c King
queen  = \c -> Piece c Queen
rook   = \c -> Piece c Rook
bishop = \c -> Piece c Bishop
knight = \c -> Piece c Knight
pawn   = \c -> Piece c Pawn

whiteKing   = king   White
whiteQueen  = queen  White
whiteRook   = rook   White
whiteBishop = bishop White
whiteKnight = knight White
whitePawn   = pawn   White

blackKing   = king   Black
blackQueen  = queen  Black
blackRook   = rook   Black
blackBishop = bishop Black
blackKnight = knight Black
blackPawn   = pawn   Black

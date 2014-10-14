module Ignifera.Util.PieceAbbr where

import Ignifera.Color
import Ignifera.Piece
import Ignifera.PieceType

king :: Color -> Piece
king c = Piece c King

queen :: Color -> Piece
queen c = Piece c Queen

rook :: Color -> Piece
rook c = Piece c Rook

bishop :: Color -> Piece
bishop c = Piece c Bishop

knight :: Color -> Piece
knight c = Piece c Knight

pawn :: Color -> Piece
pawn c = Piece c Pawn


whiteKing :: Piece
whiteKing = king White

whiteQueen :: Piece
whiteQueen = queen White

whiteRook :: Piece
whiteRook = rook White

whiteBishop :: Piece
whiteBishop = bishop White

whiteKnight :: Piece
whiteKnight = knight White

whitePawn :: Piece
whitePawn = pawn White


blackKing :: Piece
blackKing = king Black

blackQueen :: Piece
blackQueen = queen Black

blackRook :: Piece
blackRook = rook Black

blackBishop :: Piece
blackBishop = bishop Black

blackKnight :: Piece
blackKnight = knight Black

blackPawn :: Piece
blackPawn = pawn Black

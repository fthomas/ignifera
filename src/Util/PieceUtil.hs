module PieceUtil where

centipawns :: PieceType -> Int
centipawns King   = 100000000
centipawns Queen  = 900
centipawns Rook   = 500
centipawns Bishop = 300
centipawns Knight = 300
centipawns Pawn   = 100

module Ignifera.Format.Pgn where

data Comment = Comment String
  deriving (Eq, Read, Show)

data Tag = Tag String String
  deriving (Eq, Read, Show)

data CheckIndicator = Check | CheckMate
  deriving (Eq, Read, Show)

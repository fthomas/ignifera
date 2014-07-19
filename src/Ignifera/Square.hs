module Ignifera.Square where

newtype File = File Int
  deriving (Eq, Read, Show)

newtype Rank = Rank Int
  deriving (Eq, Read, Show)

data Square = Square File Rank
  deriving (Eq, Read, Show)

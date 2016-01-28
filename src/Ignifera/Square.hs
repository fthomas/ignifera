module Ignifera.Square where

newtype File = File { unFile :: Int }
  deriving (Eq, Read, Show)

instance Bounded File where
  minBound = File 0
  maxBound = File 7

instance Enum File where
  toEnum = File
  fromEnum = unFile

makeFile :: Int -> Maybe File
makeFile i | i >= 0 && i <= 7 = (Just . File) i
           | otherwise        = Nothing

newtype Rank = Rank Int
  deriving (Eq, Read, Show)

instance Bounded Rank where
  minBound = Rank 0
  maxBound = Rank 7

data Square = Square File Rank
  deriving (Eq, Read, Show)

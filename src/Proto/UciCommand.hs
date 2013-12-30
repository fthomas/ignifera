module UciCommand where

data UciCommand = Uci | Debug Bool | UciOk | ReadyOk
  deriving (Eq, Read, Show)

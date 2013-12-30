module UciParser where

import Control.Applicative((<*))
import Text.Parsec.String
import Text.Parsec
import Text.Parsec.Char

import UciCommand

p_uci = string "uci" >> return Uci
--p_uciok = string "uciok" >> return UciOk

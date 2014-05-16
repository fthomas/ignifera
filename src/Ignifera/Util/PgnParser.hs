module Ignifera.Util.PgnParser where

import Text.ParserCombinators.Parsec

import Ignifera.GameResult
import Ignifera.Util.GameResult

terminationMarker :: Parser GameResult
terminationMarker = tryOneOf [(showPgnMarker r, r) | r <- allGameResults]

tryOneOf :: [(String, a)] -> Parser a
tryOneOf xs = foldr1 (<|>) (map tryOne xs)
  where
    tryOne (s, a) = try (string s) >> return a

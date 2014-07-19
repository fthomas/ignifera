module Ignifera.Format.PgnParser where

import Text.ParserCombinators.Parsec

import Ignifera.GameResult
import Ignifera.Util.GameResult

terminationMarker :: Parser GameResult
terminationMarker = tryOneOf showPgnMarker allGameResults

tryOneOf :: (a -> String) -> [a] -> Parser a
tryOneOf f xs = choice (map tryOne xs)
  where
    tryOne a = try (string $ f a) >> return a

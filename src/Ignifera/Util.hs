module Ignifera.Util where

allValues :: (Bounded a, Enum a) => [a]
allValues = [minBound ..]

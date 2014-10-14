module Ignifera.Util where

allValues :: (Bounded a, Enum a) => [a]
allValues = [minBound ..]

backtrack :: (Monad m) => (c -> m c) -> (c -> Bool) -> c -> m c
backtrack nextCandidates accept = returnOrTraverse
  where
    traverse c = nextCandidates c >>= returnOrTraverse
    returnOrTraverse c = if accept c then return c else traverse c

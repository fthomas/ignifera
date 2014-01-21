backtrack :: (Monad m) => (c -> m c) -> (c -> Bool) -> c -> m c
backtrack nextCandidates accept firstCandidate = returnOrTraverse firstCandidate
  where
    traverse c = nextCandidates c >>= returnOrTraverse
    returnOrTraverse c = if accept c then return c else traverse c

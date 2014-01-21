backtracking :: (Monad m) => (a -> m a) -> (a -> Bool) -> a -> m a
backtracking nextCandidates accept firstCandidate = acceptOrTraverse firstCandidate
  where
    traverse c = nextCandidates c >>= acceptOrTraverse
    acceptOrTraverse c = if accept c then return c else traverse c

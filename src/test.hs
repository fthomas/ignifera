
bt :: (Monad m) => (a -> m a) -> (a -> Bool) -> a -> m a
bt nextCandidates accept firstCandidate = xx firstCandidate
  where
    go c = nextCandidates c >>= xx
    xx c = if accept c then return c else go c

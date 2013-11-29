{-# LANGUAGE DataKinds, TypeFamilies #-} 

data White
data Black
--data Opposite c

data Color = White | Black -- | Opposite Color

type family F c 

type instance F White = Black
type instance F Black = White
--type instance F (Opposite c) = c

data X c = X

xw :: X White
xw = X

xb :: X Black
xb = X

f :: X c1 -> X (F (F c1)) -> Int
f c1 c2 = 1

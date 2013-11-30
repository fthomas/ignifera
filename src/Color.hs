{-# LANGUAGE DataKinds, TypeFamilies #-} 

module Color where

data Color = White | Black
  deriving (Eq, Read, Show)

type family Opposite (c :: Color) :: Color
type instance Opposite White = Black
type instance Opposite Black = White


--oppositeColor :: Color -> (Opposite Color)
--oppositeColor White = Black
--oppositeColor Black = White

--o2 :: Maybe a -> Maybe (Opposite a)
--o2 (Just White) = Just Black
--o2 (Just Black) = Just White
--o2 _ = Nothing

--data X c = X

--xw :: X White
--xw = X

--xb :: X Black
--xb = X

--f :: X c1 -> X (Opposite (Opposite c1)) -> Int
--f c1 c2 = 1

module Color

data Color = White | Black

instance Eq Color where
  White == White = True
  Black == Black = True
  _     == _     = False

instance Ord Color where
  compare White Black = GT
  compare Black White = LT
  compare _     _     = EQ

inverse : Color -> Color
inverse White = Black
inverse Black = White


xxx : (c1 : Color) -> (c2 : Color) -> so (c1 /= c2) -> Bool
xxx _ _ _ = True

yyy : (c1 : Color) -> (c2 : Color) -> (c1 /= c2 = True) -> Bool
yyy _ _ _ = True

zzz : (c1 : Color) -> (c2 : Color) -> {auto p : c1 /= c2 = True} -> Bool
zzz _ _ = True

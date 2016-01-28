module Ignifera.Rules where

import Ignifera.Square

filesList :: [File]
filesList = map File [(unFile (minBound :: File)) .. (unFile (maxBound :: File))]

ranksList :: [Rank]
ranksList = undefined

---

kingFile :: File
kingFile = File 4

queenFile :: File
queenFile = File 3

rookFiles :: [File]
rookFiles = map File [0, 7]

knightFiles :: [File]
knightFiles = map File [1, 6]

bishopFiles :: [File]
bishopFiles = map File [2, 5]

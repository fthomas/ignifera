import Ignifera.GameResult
import Ignifera.Util.PgnParser
import Text.ParserCombinators.Parsec

main :: IO ()
main = do
  print $ parse terminationMarker "" "*"
  putStrLn "World"

import Text.ParserCombinators.Parsec

import Ignifera.GameResult
import Ignifera.Format.PgnParser
import Ignifera.Util.GameResult

main :: IO ()
main = do
  print $ testParser terminationMarker showPgnMarker allGameResults
  putStrLn "World"

testParser :: Eq a => Parser a -> (a -> String) -> [a] -> Bool
testParser p render = all f
  where f x = case parse p "" (render x) of
                Left _  -> False
                Right y -> x == y

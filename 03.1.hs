import Data.List

main = print . solution =<< readFile "input03"

solution ls =
  sum [
    fromEnum c - if c > 'Z' then 96 else 38
    | l <- lines ls,
      c:_ <-
        [uncurry intersect (splitAt (length l `div` 2) l)]]

import Data.List

main = print . solution . lines =<< readFile "input03"

solution [] = 0
solution ls =
  let
    (i, t) = splitAt 3 ls;
    c:_ = foldl1 intersect i
  in solution t + fromEnum c - if c > 'Z' then 96 else 38

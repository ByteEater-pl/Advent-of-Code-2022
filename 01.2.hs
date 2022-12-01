import Data.List

main = print . solution =<< readFile "input01"

solution ls =
	sum $ snd $ foldl
		(\(s, a) l ->
			if null l
			then (0, tail (sort (s:a)))
			else (s + read l, a))
		(0, [0, 0, 0])
		(lines ls)

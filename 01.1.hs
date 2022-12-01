main = print . solution =<< readFile "input01"

solution ls =
	snd $ foldl
		(\(s, a) l ->
			if null l then (0, max s a) else (s + read l, a))
		(0, 0)
		(lines ls)

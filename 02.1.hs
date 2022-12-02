{-# LANGUAGE ViewPatterns #-}

main = print . solution =<< readFile "input02"

solution ls =
	sum [
		m - 87 + 3 * mod (m - o + 2) 3
		| (map fromEnum -> [o, _, m]) <- lines ls]

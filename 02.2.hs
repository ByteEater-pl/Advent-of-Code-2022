{-# LANGUAGE ViewPatterns #-}

main = print . solution =<< readFile "input02"

solution ls =
	sum [
		mod (o + r + 2) 3 + 3 * r - 263
		| (map fromEnum -> [o, _, r]) <- lines ls]

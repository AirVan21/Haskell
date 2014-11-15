{-- Task

	Represent a set of comprime integers using characteristic function

--}

-- Interface implementation --
allNondivisible list = allNondivisible' list (\x -> False)
-- Termination step. If all nondivisible => True --
allNondivisible' [] _ = True
-- Increment condition --
allNondivisible' (x:xs) condition = if condition x 
	                                then False
	                                else allNondivisible' xs (\t-> condition t || t `mod` x == 0 || x `mod` t == 0) 
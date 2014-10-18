{-- Task
	
	Find all pairs (a, b), where
	sum of delimeters of a  ==  b
	sum of delimeters of b  ==  a
	and a < b

--}

-- Help function --
sumDiv number = sum [x | x <- [1 .. number `div` 2], number `mod` x == 0]

-- Correcction due to wrong brut froce using --
amicables edge = [(a,b) | a <- [1..edge], let b = sumDiv a, sumDiv b == a, a < b]
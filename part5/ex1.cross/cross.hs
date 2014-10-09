{-- Task

	Create table with "ones" on diogonal and zeros on other places
--}

-- Casts Bool to Integer --
castBool value = case value of 
					  True  -> 1
					  False -> 0
-- Checks for diagonal and puts appropriate value --
cross dimension = map (\y -> [ castBool((x == y) || (x == dimension - y + 1)) | x <- [1..dimension]]) [1..dimension]
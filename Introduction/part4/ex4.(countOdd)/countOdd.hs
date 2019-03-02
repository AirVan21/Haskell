{-- Task 

	Implement functions:
	countOdd, countOdd1  - counting amount of odd values in list  

--}

-- Implementation with foldr --
countOdd list = foldr (\x amount -> 
	                                if x `mod` 2 == 1 
	                                then (amount + 1)
	                                else amount      ) 0 list
-- Implementation with filter --
countOdd1 list = length (filter (\x -> x `mod` 2 == 1) list)

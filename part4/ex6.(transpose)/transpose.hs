{-- Task 

	Transpose matrix
--}

transpose list = if any (\x -> x == []) list
				 then []
				 else map head list : transpose (map tail list)

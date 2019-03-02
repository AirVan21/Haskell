{-- Task 
	
	Create a list of possible sublists of origin list
--}

-- Default value --
powerset [] = [[]]

powerset [x,y] = [[], [x], [y], [x,y]]
-- Starting from default, concat new element to already existing  -- 
powerset (x:rest) = let 
					subset = powerset rest
					in subset ++ (map (x:) subset)

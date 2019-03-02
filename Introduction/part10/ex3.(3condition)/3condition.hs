{-- Task 
--}

-- Using find Implementation --
find cond [] = []
find cond (x:xs) = if cond x 
                   then [x] 
                   else find cond xs
{--
	Function 'f' search in list:

	- (<5) 
	- (>10)
	- (/=7)
	
	if OK => sum
	else  => []
--}

f list = let 
            res = (find (<5) list) ++ (find (>10) list) ++ (find (/=7) list)
		 in if (length res == 3)
		    then return (sum res)
		    else [] 
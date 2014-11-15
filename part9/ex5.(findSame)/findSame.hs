{-- Task
	
	Create function which is returning duplicating list element (or notifies that it isn't found)

--}

-- Implemented String output as a answer --
findSame list = let 
                    res = (findSameHelp list [])
                in if snd res
                   then "Found: " ++ show (fst res) 
                   else "Not Found!"
-- Default value for 'Not Found!' --
findSameHelp [] _ = (-1, False)
-- Using accummulator for seen values --
findSameHelp (x:xs) accumulator = if elem x accumulator
								  then (x, True)
								  else findSameHelp xs (x:accumulator)
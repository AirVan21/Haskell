{-- Task
	
	Using comtinuation passing technique 
	calculate sum of the list

--}

-- Termination step --
sum_cps [] func = func 0
-- Recursively construct pass-function, which stores inforamtion about list --
sum_cps (x:xs) func = sum_cps xs (\accum -> func(accum + x))


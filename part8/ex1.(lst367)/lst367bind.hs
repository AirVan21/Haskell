{-- Task
	ls367 - correct version with bind
--}

lst367 = 3 : 6 : 7 : (lst367 >>= \x -> [x*10 + 3, x*10 + 6, x*10 +7]) 
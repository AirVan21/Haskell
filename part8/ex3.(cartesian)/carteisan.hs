{-- Task

	Create all possible pairs of list numbers

--}

cartesian list1 list2 = list1 >>= 
	                              \x -> list2 >>= 
	                              	              \ y -> [(x,y)]
{-- Task
	
	Square root Calculation

--}

{-- 

   Implemented iterative sqrt2 approximation algorithm via tying the knot

   Can't create method for the task. Should the next digit be calculated using last calculated digit? 

--}

sqrt2 = (3.0 / 2.0) : rootCounter sqrt2 

rootCounter (x:xs) = (x / 2 + 1 / x) : rootCounter xs
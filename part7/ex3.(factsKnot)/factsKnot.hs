{-- Task

	Using tying the knot create list of facts

--}

-- Realy hard task, I was trying (approximately more than hour) to push a parameter into knot e.g.
-- facts = 1 : map (\ x -> x * parameter) facts -- 

facts = 1: zipWith (*) facts [2..]
{-- Task

	Implement function '>>>=', with precalculation in the middle

--}

-- Default find definition --
find cond (x:xs) = if cond x then (x, xs) else find cond xs


-- Setting result of func1 will be added to the head and will be used as a param --
x = head    

func1 >>>=. func2 = \xs -> let 
							   (y, rest) = func1 xs
						   in func2 (y:rest)

	
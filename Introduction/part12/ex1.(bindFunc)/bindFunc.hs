{-- Task 

	Using '>>>=' from slides Implement  

--}

-- Default find definition --
find cond [] = (0, [])
find cond (x:xs) = if cond x then (x, xs) else find cond xs

-- Cool operator implementation --
func1 >>>= func2 = \xs -> let
                             (x, rest) = func1 xs
                          in func2 x rest

return1 value xs = (value, xs) 

f = find (>3) >>>= \x -> find (>x) >>>= \y -> return1 (x + y) 
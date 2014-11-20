{-- Task

	Implement find superpostion function 

--}

-- Default find definition --
find cond (x:xs) = if cond x then (x, xs) else find cond xs

{--
	Implementing `>>>` operator 
--}

func1 >>> func2 = func1 . snd . func2

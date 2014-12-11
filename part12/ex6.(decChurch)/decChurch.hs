{-- Task 

	Decrease Church numerals

--}

toInt churhNum = churhNum (+1) (0)

{--

	Using pair-hint imlement evolution function

--}

dec churhNum = \func x -> let 
                              step = \(a,b) -> (func a, a)
                          in snd (churhNum step (x,x))



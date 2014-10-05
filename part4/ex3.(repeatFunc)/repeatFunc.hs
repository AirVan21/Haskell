{-- Task

	Create function superposition counter

--}

-- Creating list of superposition argunets --
fill list inputFunc = map (\x -> inputFunc) list

-- Perform supermosition 'rate' times --
repeatFunc inputFunc rate = foldr (.) inputFunc (fill [1..rate-1] inputFunc)

-- Example -- 

f = repeatFunc sin 3 
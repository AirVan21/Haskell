{-- Task 

	Interpret Church numerals

--}

{-- Description

	toInt (\ f x -> f (f (f x)))

	1. Every function execution should increment number (+1)
	2. Start falue  \f x -> x corresponds to 0

--}

toInt function =  function (+1) 0
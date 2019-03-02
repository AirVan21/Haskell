{-- Task

	Create a lazy calculation for a infinite 'one' list
--}

ones = ones' 1
-- Main realization -- 
ones' n = n : ones' ((n * 10) + 1)


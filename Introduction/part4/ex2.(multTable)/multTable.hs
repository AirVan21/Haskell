{-- Task
	
	Create multiplication table for setted dimension
--}

multTable size = map (\x -> map (*x) [1..size]) [1..size]
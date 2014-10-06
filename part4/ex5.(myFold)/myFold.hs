{--Task

	Implement own foldl realisation

--}

myfoldl _ result [] = result
myfoldl inputFunc base (x:restList) = myfoldl inputFunc (inputFunc base x) restList

{--
	Thank you for a beautiful idea! 
--}

-- Example --
test = (foldl (-) 1 [2,3,5]) == (myfoldl (-) 1 [2,3,5]) 

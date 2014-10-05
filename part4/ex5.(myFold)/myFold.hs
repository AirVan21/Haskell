{--Task

	Implement own foldl realisation

--}

myfoldl _ base [] = base
myfoldl inputFunc base (x:restList) = myfoldlHelp inputFunc restList (inputFunc base x)

-- Structural Induction --
myfoldlHelp _ [] result = result
myfoldlHelp func (x:rest) result = myfoldlHelp func rest (func result x)  

-- Example --
test = (foldl (-) 1 [2,3,5]) == (myfoldl (-) 1 [2,3,5]) 

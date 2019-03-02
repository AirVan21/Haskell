{-- Task
	
	Build a Pascal Triangle 
	(Using tying a knot method)

--}


pascal = [1] : handle pascal

{-- 
 
    Tying the knot via adding new pascal numbers list --
    Pascal numbers starts with '1'

 --}
handle (x:xs) = (1 : neighbourSum x) : handle xs

-- Pascal numbers ends on '1' --
neighbourSum [lst] = [1]
-- Summing elements pairs --
neighbourSum (x : y : rest) =  (x + y) : neighbourSum (y : rest) 




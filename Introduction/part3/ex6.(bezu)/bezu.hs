{-- Task:
	
	a*x + b* y = 1 ; GCD(a,b) == 1

	Correct (x,y) should be finded!
--}
 
{-- Idea:
	
	x = 1 - b*y / a

	Brute forse params from [0..a-1],
	because they will give us all reminders
--} 

 correctYfinder a b y 
					  | mod (b * y) a == 1      = y
					  | True                    = -1

-- Function for OK case --
 euclidOK a b = let
 			  	   brute = [0..a]
 			  	   possibleY = map (correctYfinder a b) brute 
 			  	   getY = head (filter (>(-1)) possibleY)
 			  	   getX = div (1 - b * getY) a
 			   in (getX, getY)
 
 -- Common case --
 euclid a b  = if (gcd a b == 1) && (a,b) /= (1,1)
 			   then euclidOK a b
 			   else (1,0)
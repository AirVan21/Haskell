{-- Task

	Implement multi-find task using do notation

--}

-- Using find implementation from Data.List (cuz it's already has Maybe-class on return)
import Data.List
-- Implement interface --
f list = do 
			x <- find (<5)  list
			y <- find (>10) list
			z <- find (/=7) list
			return (x + y + z)
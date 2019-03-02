{-- Task

	Using classes represent figures and implement simple functions

--}

-- Describes a Rectangle with params: width, length, x coord of center, y coord of center -- 
data Rectangle = Rect Double Double Double Double
-- Describes a Circle with params: radius, x coord of center, y coord of center --
data Circle = Circle Double Double Double 

class Shape a where
-- specific Shape |  (x1)  |   (y1)   | result --
	contains:: a -> Double -> Double -> Bool  

{--
	Checks if point (x1,y1) contains in a specific Shape 
--}
instance Shape Rectangle where
	contains (Rect width height cenx ceny) x1 y1 =  let 
	                                                   fitX = 2 * abs(x1 - cenx) <= width
	                                                   fitY = 2 * abs(y1 - ceny) <= height
	                                                in fitX && fitY
instance Shape Circle where
    contains (Circle radius cenx ceny) x1 y1 = (x1 - cenx)^2 + (y1 - ceny)^2 <= radius^2                            
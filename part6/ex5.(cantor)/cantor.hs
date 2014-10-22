{-- Task

	Create infinite Cantor Set

--}

-- Declaration of infinite 
cantor = cantorSet 0
-- Infinite part --
cantorSet degree = (zip [1..(degree - 1)] (reverse [1..(degree - 1)])) ++ cantorSet (degree + 1)
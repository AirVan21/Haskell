{-- Task

	Triangle fucntion

	Create increasing list of squares
--}

-- ">>=" && "return" --
triangle1 num = [1..num] >>= 
                            \x -> [1..x] >>= 
                                            \y -> return (y^2)
-- "do" && "return"
triangle2 num = do x <- [1..num]
                   y <- [1..x]
                   return (y^2)


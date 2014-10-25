{-- Task

   Crete Super Map fucntion (map function with action on multiple values)

--}

-- Termination step --
superMap function [] = []
-- Iteration step -- 
superMap function (x:rest) = function x ++ superMap function rest 
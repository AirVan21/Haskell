-- Summing list neighbours product --  
sumprod (x:xs) = sum (map (\(x,y) ->x * y) (zip (x:xs) xs))
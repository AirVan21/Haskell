-- Function for creatin list of pairs (n,n^2) -- 
squareTable dimension = zip [1..dimension] (map (\x -> x^2) [1..dimension])
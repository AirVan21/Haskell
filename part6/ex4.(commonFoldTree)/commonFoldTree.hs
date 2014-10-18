{-- Task

	Using defined foldTree, calulate a sumSqr function on Tree
--}

data Tree a = Empty | Node a (Tree a) (Tree a)

-- Default case --
foldTree func el Empty = el
-- Discussed Template --
foldTree func el (Node value leftT rightT) = let 
                                           resLeft  = foldTree func el leftT
                                           resRight = foldTree func el rightT
                                        in func value resLeft resRight
-- sumSqr function implementation --
sumSqr tree = foldTree (\val1 val2 val3 -> sum [val1^2, val2, val3]) 0 tree
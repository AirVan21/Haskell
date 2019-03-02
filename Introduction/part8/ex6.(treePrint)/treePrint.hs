{-- Task

    Assume we have a Tree structure with a 'char' symbols in a node  
    We should print a Tree 
--}

-- Generic Tree construction --
data Tree a = Empty | Node a (Tree a) (Tree a)
-- Default case with Empty node --
toStr Empty = "e"
-- Not Empry Tree printer -- 
toStr (Node char leftTree rightTree) = let 
                                           nodeChar = "n" ++ [char]
                                       in nodeChar ++ (toStr leftTree) ++ (toStr rightTree) 
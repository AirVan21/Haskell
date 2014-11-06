{-- Task

    Assume we have a Tree structure with a 'char' symbols in a node  
    We should print a Tree without '++'
--}

-- Generic Tree construction --
data Tree a = Empty | Node a (Tree a) (Tree a)

-- Not Empty Tree printer -- 
toStr tree = toStrWithAccum tree ""

-- Default case with Empty node --
toStrWithAccum Empty accumStr = 'e' : accumStr

-- Non-empty Tree case without '++'
toStrWithAccum (Node char leftTree rightTree) accumStr = let 
                                                             rightRes = (toStrWithAccum rightTree accumStr)
                                                             leftRes  = (toStrWithAccum leftTree rightRes)
                                                         in 'n' : char : leftRes
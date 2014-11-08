{-- Task

    Assume we have a string representin a Tree
    We should recreate a Tree structure with a 'char' symbols in a node  
--}

data Tree a = Empty | Node a (Tree a) (Tree a)
					  deriving (Show)
{-- 
	Calculates Tree data structure length, when it is written as a string --
	length('e') = 1 
--}
lengthTree Empty = 1
-- length ('n' + char) = 2 
lengthTree (Node char leftT rightT) = let 
                                          resLeft = lengthTree leftT
                                          resRihgt = lengthTree rightT
                                      in 2 + resLeft + resRihgt 
-- Recreates Tree from string --
fromStr (char : stringRest) = if (char == 'n')
							  then let
							  	       nextSubStr  = tail stringRest
							  	       leftTree  = fromStr nextSubStr
							  	       rightTreeSubStr = drop (lengthTree leftTree) nextSubStr 
							  	       rightTree = fromStr rightTreeSubStr   
							  	   in Node (head stringRest) leftTree rightTree  
   	                           else Empty

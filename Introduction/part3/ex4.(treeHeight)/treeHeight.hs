-- Defines type -- 
data Tree = Empty | Node Integer Tree Tree 
-- Main function -- 
height inputTree = heightHelp inputTree 0
-- Accessed leaf --
heightHelp Empty _ = 0
heightHelp (Node value Empty Empty) heightRes = heightRes
-- Tree search -- 
heightHelp (Node value leftTree rightTree) heightRes = let 
														   updHeight = heightRes + 1  
													   in max (heightHelp leftTree updHeight) (heightHelp rightTree updHeight)  
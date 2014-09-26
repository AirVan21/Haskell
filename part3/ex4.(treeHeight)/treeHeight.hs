-- Defines type -- 
data Tree = Empty | Node Integer Tree Tree 
-- Main function -- 
height inputTree = heightHelp inputTree 0
-- Accessed leaf --
heightHelp Empty heightRes = heightRes
-- Tree search -- 
heightHelp (Node value leftTree rightTree) heightRes = max (heightHelp leftTree (heightRes + 1)) (heightHelp rightTree (heightRes + 1)) 
-- Main function -- 
data Tree = Empty | Node Integer Tree Tree 
height inputTree = heightHelp inputTree 0
-- Help function --
heightHelp Empty heightRes = heightRes
heightHelp (Node value leftTree rightTree) heightRes = max (height leftTree (heightRes + 1)) (height rightTree (heightRes + 1)) 
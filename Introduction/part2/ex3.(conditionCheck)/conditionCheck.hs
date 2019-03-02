-- Main function -- 
check cond xs = checkHelp cond xs False
-- Help function -- 
checkHelp cond [] result = result
checkHelp cond (top:xs) result = if (cond top)
								 then checkHelp cond [] True
								 else checkHelp cond xs False
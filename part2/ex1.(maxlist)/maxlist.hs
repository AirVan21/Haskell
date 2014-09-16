-- Main funnction --
maxlist searchList = maxlistHelp (tail searchList) (head searchList)
-- Help functione -- 
maxlistHelp (x:xs) currentMax = if x > currentMax
								then maxlistHelp xs x
								else maxlistHelp xs currentMax
-- Output value --
maxlistHelp x definedMax = definedMax 
-- Matching test --
correctYfinder a b y 
					 | mod (b * y) a == 1      = y
					 | True                    = -1
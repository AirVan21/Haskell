{-- Task
	
	CheckSumMono, check if exist sum of 2 list elements == 10
	Difficulty: O(n) 

--}

{--Idea 

	Search list from both sides

--}

checkSumMono list = checkSumMonoHelp list (reverse list) False
-- Structural Induction Performing ? --
checkSumMonoHelp [] [] result = result
checkSumMonoHelp (x:listRest) (y:revListRest) result   
                                                     | x + y == 10 && x /= y = checkSumMonoHelp [] [] True 
                                                     | x + y < 10      	    = checkSumMonoHelp listRest (y:revListRest) False
                                                 	 | x + y > 10            = checkSumMonoHelp (x:listRest) revListRest False
checkSumMonoHelp _ _ _ = False
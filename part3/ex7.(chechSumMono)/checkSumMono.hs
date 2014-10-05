{-- Task
	
	CheckSumMono, check if exist sum of 2 list elements == 10
	Difficulty: O(n) 

--}

{--Idea 

	Search list from both sides

--}

checkSumMono list = checkSumMonoHelp list (reverse list) 
-- Structural Induction Performing ? --
checkSumMonoHelp [] [] = True
checkSumMonoHelp (x:listRest) (y:revListRest)   
                                              	| x + y == 10 && x /= y = checkSumMonoHelp [] [] 
                                                | x + y < 10      	    = checkSumMonoHelp listRest (y:revListRest) 
                                                | x + y > 10            = checkSumMonoHelp (x:listRest) revListRest 
checkSumMonoHelp _ _ = False
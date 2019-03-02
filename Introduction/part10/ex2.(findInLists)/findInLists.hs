{-- Task
	
	Using find function implement "find" on list of lists

	Failure continuation tequnique is needed
--}

-- Using "Own" find implementation --
find f [] err = err
find f (x:xs) err = if f x then x 
			    	else find f xs err
{--
	Test condition list per list
--}
findInLists [] _ errorCase = errorCase
findInLists listOfLists condition errorCase = find condition (head listOfLists) 
                                                   (findInLists (tail listOfLists) condition errorCase) 
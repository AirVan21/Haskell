{-- Task 

	Create a list of list, where elements from 1..'range'
	and length of every list is 'listLength'

	All numbers should be different
--}

-- Going to use 'delete' --
import Data.List
-- Implement appropriate interface --
allDiffLists range listLength = allDiffListHelp [1..range] listLength
-- List generating with decreasing varinat pool --
allDiffListHelp range 1 = [[x] | x <- range]
allDiffListHelp range listLength = [y : sublist | y <- range, let newRange = delete y range,  sublist <- (allDiffListHelp newRange (listLength - 1))] 

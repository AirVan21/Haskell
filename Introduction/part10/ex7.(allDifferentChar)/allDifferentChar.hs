{-- Task

	Implement all different lists

--}

-- Implement interface with Characteristic function --
allDiffLists range size = allDiffListsHelp range size (\t -> True)
-- Dafault value -- 
allDiffListsHelp range  0   condition = [[]]
-- Develop Characteristic function as a condtion for different elements --
allDiffListsHelp range size condition = [ x : sublist | x <- [1..range], (condition x), 
                                                        sublist <- (allDiffListsHelp range (size - 1) (\t -> t /= x && condition t))] 
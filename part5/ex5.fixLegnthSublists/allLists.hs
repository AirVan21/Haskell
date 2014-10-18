{-- Task 

	Create funtion allLists n k, 
	where 1..n is a list of possible values
	and k is a length of required sublist

--}

-- Error case --
allLists _ 0 = []

-- Version №1 -- 

{--

-- Induction base --
allLists range 1 = [[x] | x <- [1..range]]
-- Induction step --
allLists range listLength = helpallLists range (listLength - 1) (allLists range 1)

-- Structural induction --
helpallLists _ 0 accumulator = accumulator
helpallLists range listLength accumulator = helpallLists range (listLength - 1) [y : sublist | y <- [1..range], sublist <- accumulator]

--}

-- Version №2 --

{-- 
 
    I thought  about this solution for a couple days, 
    and in my opinion it's more beautiful =)
 
 --}

-- Induction base --
allLists range 1 = [[x] | x <- [1..range]]
-- Induction step --
allLists range listLength = [y : sublist | y <- [1..range], sublist <- (allLists range (listLength - 1))]

 
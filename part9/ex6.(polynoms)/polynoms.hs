{-- Task

	Implement polynoms via Haskell class
	Implement multiplication, addition, comparison 

--}

import Debug.Trace

{--
	Defining polynom structure. [3,6,1] = 3*x^2 + 6*x + 1
--}
data Polynom = Polynom [Int]

-- Implementing Comparison --
instance Eq Polynom where
	(Polynom indexes1) == (Polynom indexes2) = (indexes1 == indexes2)

instance Show Polynom where
	show (Polynom list) = show list 

-- Implementing additiom --
instance Num Polynom where
	(Polynom indexes1) + (Polynom indexes2) = let
												 arguments = equalize indexes1 indexes2 
												 tempRes = zipWith (+) (fst arguments) (snd arguments)
	                                          in Polynom (cut tempRes)
	
	(Polynom indexes1) * (Polynom indexes2) = let 
	                                              multLength = length(indexes1) + length(indexes2)
	                                              multTemplate = extendByZerosLeft [] multLength
	                                              answer = polyMult indexes1 indexes2 multTemplate 
		                                      in Polynom (cut answer)
{--
	Extra functions suit
--}

-- Performs multiplication --
polyMult _ [] result = result
polyMult indexes (x:xs) result = let 
                                    positon   = length(xs)
                                    tempRes   = map (*x) indexes
                                    iterRes   = extendByZerosRight tempRes positon
                                    arguments = equalize iterRes result
                                    newRes    = zipWith (+) (fst arguments) (snd arguments)  
                                 in polyMult indexes xs newRes

-- Function for excluding extra zeros --
cut [] = [0]
cut (x:xs) = if x /= 0 
	         then (x:xs)
	         else (cut xs)

-- Extends polynom with zeros in elder positions --
extendByZerosLeft list amount = if amount > 0 
                                then extendByZerosLeft (0:list) (amount-1)
                                else list 

-- Extends polynom with zeros in lower positions --
extendByZerosRight list amount = if amount > 0 
                                then extendByZerosRight (list ++ [0]) (amount-1)
                                else list 

-- Equalize lenght of the lists adding extra zeros --
equalize list1 list2 = let 
                          lengthDiff = abs(length(list1) - length(list2))
	                   in if (length(list1) > length(list2))
					      then ((extendByZerosLeft list2 lengthDiff), list1)
					      else ((extendByZerosLeft list1 lengthDiff), list2)

-- Testing --
test1 = Polynom [2,1,0] * Polynom [1,0,0]  == Polynom [2,1,0,0,0]
test2 = Polynom [1,1,0] + Polynom [-1,0,1] == Polynom [1,1]
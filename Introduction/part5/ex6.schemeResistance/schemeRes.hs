{-- Task

	Create function which checks existance of a scheme
	with suitable resistance

--}
-- Going to use 'delete' --
import Data.List
import Debug.Trace

-- Definition --
parallelFunc = \ x y -> x * y / (x + y)
serialFunc = \ x y -> x + y

-- Start function --
canMakeScheme resArray suitRes = (firstScheme resArray suitRes parallelFunc) || (firstScheme resArray suitRes serialFunc) 

-- Default case -- 
firstScheme [] _ _ = False
-- On a first step trying to detect possible scheme --
firstScheme (x:rest) suitRes function = let  -- posRes - possible resistor, which could be added in scheme
											 -- resist - current scheme resistance
											 -- rest -   list of possible resistors, which could be added in a scheme 
	                                         posDecision = [(posRes, resist, rest) | posRes <- rest, let resist = function x posRes
	                                                                              {--(suitRes - resist) >= 0--}]
	                                   in if any (\(_, resist, _) -> resist == suitRes) posDecision
	                                   then True
	                                   else  (firstScheme rest suitRes function) || (nextScheme  posDecision suitRes parallelFunc) || (nextScheme  posDecision suitRes serialFunc) 
-- Default case -- 
nextScheme [] _ _ = False
-- Main action --
nextScheme tupleList suitRes function = let 
										    posDecision = [(posRes, resist, rest) | 
										                       (y, prevResist, list) <- tupleList, let rest = (delete y list),
										                       posRes <- rest, 
										                       let  resist = (function posRes prevResist) 
										                       {--(suitRes - resist) >= 0--}]
										    in if any (\ (_, resist, _) -> resist == suitRes) posDecision
										       then True
										       else (nextScheme posDecision suitRes parallelFunc) || (nextScheme posDecision suitRes serialFunc)


										                                                                  


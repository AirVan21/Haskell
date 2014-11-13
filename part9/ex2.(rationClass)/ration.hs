{--Task

	Impelement class and functions for fraction 

--}

data Ration = Rat Integer Integer

{--
	Implementing addition for fractions
--}
instance Num Ration where
	(Rat num1 den1) + (Rat num2 den2) = let 
	                                        numerator   = (num1 * den2) + (num2 * den1)
	                                        denominator = den1 * den2
	                                        reduce = gcd numerator denominator
	                                    in (Rat (numerator `div` reduce) (denominator `div` reduce))
{--
	Implementing show for fractions
--}
instance Show Ration where
	show (Rat numerator denominator) = show numerator ++ " / " ++ show denominator  

{--
	Implementing equal operator for fraction
--}
instance Eq Ration where
	(Rat num1 den1) == (Rat num2 den2) = (num1 * den2) == (num2 * den1)

{--
	Implementing compare operator for fraction
--}
instance Ord Ration where
	(Rat num1 den1) < (Rat num2 den2) = (num1 * den2) < (num2 * den1)
	(Rat num1 den1) > (Rat num2 den2) = (num1 * den2) > (num2 * den1)
    
    


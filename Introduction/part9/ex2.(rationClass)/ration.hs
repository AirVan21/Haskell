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
	show (Rat numerator denominator) = show numerator ++ "/" ++ show denominator  

{--
	Implementing equal operator for fraction
--}
instance Eq Ration where
	(Rat num1 den1) == (Rat num2 den2) = let 
	                                        mult = (num1 * den2) == (num2 * den1)
	                                        sign = ((num1 * den1) > 0) == ((num2 * den2) > 0)
	                                     in mult && sign

{--
	Implementing compare operator for fraction
--}
instance Ord Ration where
	(Rat num1 den1) < (Rat num2 den2) = let 
	                                        mult = abs(num1 * den2) < abs(num2 * den1)
	                                        positive1 = (num1 * den1) > 0
	                                        positive2 = (num2 * den2) > 0
	                                     in (mult && (positive2 == True)) || (not mult && (positive1 == False))

	(Rat num1 den1) > (Rat num2 den2) = let 
	                                        mult = abs(num1 * den2) > abs(num2 * den1)
	                                        positive1 = (num1 * den1) > 0
	                                        positive2 = (num2 * den2) > 0
	                                     in (mult && (positive1 == True)) || (not mult && (positive2 == False))
    


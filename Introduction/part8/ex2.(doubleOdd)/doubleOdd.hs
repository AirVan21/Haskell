{-- Task

	Double odd numbers in list via ">>="

--}

doubleOdd list = list >>= \x -> if (x `mod` 2 /= 0)
                                then [x, x] 
                                else [x]


-- Prime test function --
isPrime 1 = False
isPrime number = isPrimeHelp number (div number 2) True
-- Prime test help function --
isPrimeHelp number 1 answer = answer
isPrimeHelp number divider answer = if (mod number divider) == 0
									then isPrimeHelp number 1 False
									else isPrimeHelp number (divider - 1) True
-- Main function -- 
g number = gHelp 1 (number - 1) False 
-- Base result --
gHelp 1 1 result = result
-- Help function --
gHelp numOne numTwo result = if ((isPrime numOne) && (isPrime numTwo) && (numOne /= numTwo))
							 then gHelp 1 1 True 
							 else if (numTwo > numOne)
							 	  then gHelp (numOne + 1) (numTwo - 1) False 
							 	  else gHelp 1 1 False	
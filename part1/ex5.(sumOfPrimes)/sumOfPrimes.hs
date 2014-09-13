-- Main function --
isPrime number = isPrimeHelp number (div number 2) True
-- Help function --
isPrimeHelp number 1 answer = answer
isPrimeHelp number divider answer = if (mod number divider) == 0
									then isPrimeHelp number 1 False
									else isPrimeHelp number (divider - 1) True
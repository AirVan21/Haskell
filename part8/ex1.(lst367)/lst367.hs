{--Task

	Create increasing number sequence with ony 3, 6, 7 digits
--}

-- Defining sequence --
lst367 = 3 : nextNumber lst367
-- Setting step in series --
nextNumber (x : rest) = let 
                          lastDigit = x `mod` 10
                          body = x `div` 10 
                        in case lastDigit of 
                         		      3 -> (body * 10 + 6)  : nextNumber rest
                         		      6 -> (body * 10 + 7)  : nextNumber rest
                           		      7 -> nextSeries x 1 0 : nextNumber rest
-- Step to the next series --
nextSeries number degree rest = let 
                                   lastDigit = number `mod` 10
                                   body = number `div` 10 
                                in if (lastDigit == 7)
                                   then nextSeries (number `div` 10) (degree * 10) (rest * 10 + 3)
                                   else case lastDigit of 
                                   	          0 -> 3 * degree + rest
                                   	          3 -> ((body * 10) + 6) * degree + rest
                                   	          6 -> ((body * 10) + 7) * degree + rest
                                   	          



{-- Task

	Create increasing 3^i * 10^j sequence

--}

-- Going to use 'delete' --
import Data.List
-- Starts from 3
sequence3  = 3 : map (*3)  sequence3
-- Starts from 1
sequence10 = 10 : map (*10) sequence10
-- Constructors for new sequence --
make10seq number =  [x * number | x <- sequence10]
make3seq  number =  [x * number | x <- sequence3 ]
 {--
 	Main procedure. Always store list of all possible lists with multiplication as a main elements
 	Time constraints: for ham !! 10000 I waited approximately a minute 
 --}
ham' listOfList = let 
                     addition  = minimum (map (head) listOfList)
                     corrected = map (delete addition) listOfList
                  in if (addition `mod` 3 == 0) && (addition `mod` 10 == 0)
                  then 
                      addition : (ham' corrected)  
                  else
                  if (addition `mod` 3 == 0)
                  then addition : (ham' ((make10seq addition) : corrected)) 
                  else addition : (ham' ((make3seq  addition) : corrected)) 
-- Interface implementation --
ham = 1 : (ham' [sequence3, sequence10])
                              
                         



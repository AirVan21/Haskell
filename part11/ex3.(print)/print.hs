{-- Task

	Use print to show downup sequence

--}

{--
	Increasing sequence print
--}
up 0 number = print number

up current number = do
			        print (number - current)
			        up (current-1) number

{--
	Decreasing sequence print
--}
down 1 = print 1  

down number = do 
                print number	 	
                down (number-1)
{--
	Combining prints
--}
downUp number = do
                  down number
                  up 1 number
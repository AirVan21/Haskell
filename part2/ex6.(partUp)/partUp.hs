-- Main function --
parts list =let 
				lengths = up list 1 []
			in if (lengths /= [])
			   then parts' list lengths
			   else False

-- Fix for parts [1, 2, 2, 0, 1, 1] --
parts' list lengths = let					
			 			minLength = minimum lengths
						delimeters = searchDelimeters minLength [] minLength
 			 		  in testAllDelimeters delimeters lengths True 
 			
{--
	My idea:
	
	1) Find upSequences and count it's Lengths (up)
	2) Find minimum length
	3) Find all delimeters for minimum length
	4) Check if these delimeters are delimeters for all lengths

--}


-- Function for defining up sequences lengths --
up [] _ [] = []
up [_] seqLen lenList = (seqLen:lenList) 
up (top:pretop:rest) seqLen lenList = if (top < pretop)
					  		  		  then up (pretop:rest) (seqLen + 1) lenList
					   		  		  else if (top == pretop) 
					   			   		   then up [] seqLen [] 
					   			   		   else up (pretop:rest) 1 (seqLen:lenList)
-- Looking for delimeters -- 
searchDelimeters _ delimList 1 = delimList
searchDelimeters dividend delimList counter = if ((mod dividend counter) == 0)
										      then searchDelimeters dividend (counter:delimList) (counter - 1)     
										      else searchDelimeters dividend delimList (counter - 1)
-- Cheking that current delimeter fits for lengths -- 
checkDelimeter _ [] result = result 
checkDelimeter delimeter (top:rest) result = if ((mod top delimeter) == 0)
											 then checkDelimeter delimeter rest True
											 else checkDelimeter delimeter [] False 
-- Checking possible delimters to fit --
testAllDelimeters [] lengths result = result
testAllDelimeters (top:delimeters) lengths result = if (checkDelimeter top lengths True)
													then testAllDelimeters [] [] True
													else testAllDelimeters delimeters lengths False

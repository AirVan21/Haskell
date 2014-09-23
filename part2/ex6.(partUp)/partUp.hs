-- Main function --
parts list = upWithLenght list 1 (up list 1 [])  

{--
	My idea:
	
	1) Find upSequences and count it's Lengths (up)
	2) Check all upSequnces for minimum Length condition (upWithLength)

--}


-- Function for defining up sequences lengths --
up [] _ [] = 0
up [_] seqLen lenList = minimum (seqLen:lenList) 
up (top:pretop:rest) seqLen lenList = if (top < pretop)
					  		  		  then up (pretop:rest) (seqLen + 1) lenList
					   		  		  else if (top == pretop) 
					   			   		   then up [] seqLen [] 
					   			   		   else up (pretop:rest) 1 (seqLen:lenList) 
-- Checking all up sequences --  
upWithLenght [_] curLen seqLen = (curLen == seqLen)
upWithLenght (top:pretop:rest) curLen seqLen = if (seqLen == curLen)
											   then upWithLenght (pretop:rest) 1 seqLen 
											   else if (top < pretop)
											   	    then upWithLenght (pretop:rest) (curLen + 1) seqLen 
											   	    else upWithLenght [] 0 seqLen
-- Main function --
parts list = up list 1 True

{--
	My idea:
	
	1) Find first upSequence and count it's Length (up)
	2) Check other upSequnces for this Length condition (upWithLength)

--}


-- Function for defining first up sequence length --
up [_] seqLen result = result
up (top:pretop:rest) seqLen result = if (top < pretop)
					  		  		 then up (pretop:rest) (seqLen + 1) True
					   		  		 else if (top == pretop) 
					   			   		  then up [] seqLen False
					   			   		  else upWithLenght (pretop:rest) 1 seqLen 
-- Checking all up sequences --  
upWithLenght [_] curLen seqLen = (curLen == seqLen)
upWithLenght (top:pretop:rest) curLen seqLen = if (seqLen == curLen)
											   then upWithLenght (pretop:rest) 1 seqLen 
											   else if (top < pretop)
											   	    then upWithLenght (pretop:rest) (curLen + 1) seqLen 
											   	    else upWithLenght [] 0 seqLen
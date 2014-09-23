-- Main function --
parts list = up list 1 True
-- Function for defining first up sequence length --
up (top:pretop:rest) seqLen result = if (top < pretop)
					  		  		 then up (pretop:rest) (seqLen + 1) True
					   		  		 else if (top == pretop) 
					   			   		  then up [] seqLen False
					   			   		  else upWithLenght (pretop:rest) 1 seqLen result
up [_] seqLen result = result
-- Checking all up sequences -- 
upWithLenght [] _ _ result = result
upWithLenght (top:pretop:rest) curLen seqLen result = if (top < pretop)
					  		  		 				  then if (curLen < seqLen) 
					  		  		 				  	   then upWithLenght (pretop:rest) (curLen + 1) seqLen True
					  		  		 				  	   else upWithLenght [] curLen seqLen False
					   		  		 				  else if (top > pretop)
					   		  		 				  	   then if (curLen == seqLen)
					   		  		 				  	   	    then upWithLenght (pretop:rest) 1 seqLen True
					   		  		 				  	   	    else upWithLenght [] curLen seqLen False
					   		  		 				  	   else upWithLenght [] curLen seqLen False
upWithLenght element _ _ result = result

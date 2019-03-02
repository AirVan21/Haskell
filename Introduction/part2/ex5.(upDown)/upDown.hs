-- Main function -- 
upDown list = up list False
-- Up direction -- 
up [] _ = False
up (top:pretop:rest) result = if (top < pretop)
					  		  then up (pretop:rest) True
					   		  else if (top == pretop) 
					   			   	then up [] result
					   				else down (pretop:rest) result
up element _ = False
-- Down direction -- 
down [] False = False
down [] _ = True
down (top:pretop:rest) result = if (top > pretop)
						 		then down (pretop:rest) True
						 		else down [] False
-- Case for last element -- 
down top result = result

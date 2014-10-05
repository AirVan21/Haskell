{-- Task
	
	Using map as a cycle
	Replace ! => ?
	Replace ? => !

--}

swapSymbols inputStr = map ( \x -> case x of { 
								  			    '!' -> '?';
								  				'?' -> '!';
								   	 			x  -> x   ; } ) inputStr

{-- 
	P.S. I had problems without using Full-Syntax style
	What is happening when I remove '{'  '}' ? 
--}
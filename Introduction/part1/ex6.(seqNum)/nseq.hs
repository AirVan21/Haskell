-- Basic values --
nseq 1 = 1
nseq 2 = 1
-- Main function --
nseq n =let 
			currentHalf = halfFunction n
		in nseqHelp (currentHalf) (n - currentHalf) (currentHalf) 1 n 
		-- 1 because we count single value sequnce {number}--  
-- Half function -- 
halfFunction number = if (mod number 2) == 1
					  then div number 2
					  else (div number 2) - 1
{--
	Understand that we shoud take sequence {number} and other sequnces starts
	with a value, that is less than half of this number {less than half, ...} 
--} 

nseqHelp 0 _ _  seqAmount inputNumber = seqAmount 
{--
	I do not know for sure will it work in all cases, but when we add difference between 'half' and 'edge'
	it is equals to amount of subsequnces
--}
nseqHelp counter number edge seqAmount inputNumber = let 
								 	        			currentHalf = halfFunction number
								 		 			 in if currentHalf > edge
								 		 			 -- Could divide 'number' in other numbers
								 		 			 then nseqHelp (counter - 1) (inputNumber + 1 - counter) (counter - 1) (seqAmount + currentHalf - edge + 1) inputNumber
								 		 			 else nseqHelp (counter - 1) (inputNumber + 1 - counter) (counter - 1) (seqAmount + 1) inputNumber
								 		 			 
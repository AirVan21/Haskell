-- Main function -- 
checkSum list = checkSumMod [] list False
-- Function for finding sum = 10 --
checkTen element viewedList = searchTen element viewedList False 	 
searchTen _ _ True = True
searchTen element [] result = result
searchTen element (top:restCompareList) result = if (top + element == 10)
												 then searchTen element [] True 
												 else searchTen element restCompareList result    
-- Help function -- 
checkSumMod _ _ True = True
checkSumMod viewedList [] result = result 
checkSumMod viewedList (top:rest) result = if (checkTen top viewedList)
										   then checkSumMod [] [] True
										   else checkSumMod (top:viewedList) rest result

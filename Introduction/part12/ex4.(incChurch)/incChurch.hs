{-- Task 

	Increase Church numerals

--}

toInt function =  function (+1) 0

inc function = \func param -> func (function func param)

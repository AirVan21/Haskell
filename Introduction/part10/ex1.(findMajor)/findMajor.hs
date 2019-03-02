{-- Task 

	Check if list contains an element which is greater then sum of others

--}

-- Default Interface Implementation --
findMajor list = findMajor' 0 (sum list) list

{--
	@beginSum - is a sum of [firstListElement, preCurrentElement]
	@endSum   - is a sum of [postCurrentElement, endElement]

	Using these accumulator values for solution without list resummming 

--}
findMajor' _ _ [] = Nothing
findMajor' beginSum endSum (top:xs) = if (beginSum + endSum - top) < top 
                                      then Just top
                                      else findMajor' (beginSum + top) (endSum - top) xs   
{-- Task

	Perform operations on tree via own fold
--}

data Tree = Empty | Node Integer Tree Tree

-- Function for binary function implementation on Tree --

foldTree binFunc startElem searchTree = case searchTree of 
	                                         Empty                       -> startElem
	                                         (Node value leftTr rightTr) -> let 
	                                         								    leftPart = foldTree binFunc (binFunc startElem value) leftTr
	                                         								in foldTree binFunc leftPart rightTr
-- Testing --

test1 = foldTree (+) 1 (Node 2 (Node 3 Empty Empty) (Node 4 Empty (Node 5 Empty Empty)))
test2 = foldTree (*) 1 (Node 2 (Node 3 Empty Empty) (Node 4 Empty (Node 5 Empty Empty)))

-- About height I will think later -- 	                                         								        

                                         
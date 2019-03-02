{-- Task

	a. Create a function which finds sum of all delimeters for number 'n'
	b. Crate a function which calculates all 'perfect' numbers

--}

sumDiv number = sum [x | x <- [1 .. number `div` 2], number `mod` x == 0]

perfects edge = [y | y <-[1 .. edge], (sumDiv y) == y]


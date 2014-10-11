{-- Task

	Money exchange demonstation
	Got 2, 3, 5 valuation coins 
--}

coins capital = let 
					dimension = capital `div` 2 
					cash = \(num2Coin, num3Coin, num5Coin) -> num2Coin * 2 + num3Coin * 3 + num5Coin * 5 
				in [[x,y,z] | x <- [0..dimension], y <- [0..dimension], z <- [0..dimension], cash (x,y,z) == capital] 
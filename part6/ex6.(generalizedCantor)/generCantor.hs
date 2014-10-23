{-- Task

	Create infinite Generalized Cantor Set

--}

-- Interface function --
generalizedCantor range = generalizedCantorHelp range range
-- Setting infinite solution --
generalizedCantorHelp range sumVal = (allListSum sumVal range) ++ (generalizedCantorHelp range (sumVal + 1)) 

-- Base Сase for one-length list --
allListSum listSum 1 = [[listSum]]
-- Using list length constraints for generating list with currentSum -- 
allListSum listSum listLength = [y : sublist | y <- [1..(listSum - listLength) + 1], let newListSum = listSum - y,
                                               sublist <- (allListSum newListSum (listLength - 1))]


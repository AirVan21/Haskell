{-- Task

	Create Scheme Model
--}

-- Scheme Data Structure --
data Scheme om = Resistance om | Parallel (Scheme om) (Scheme om) | Serial (Scheme om) (Scheme om)
-- Scheme Resistance Conuter --
totalResistance schemeTempalte = case schemeTempalte of 
                                      Resistance value                -> value
                                      Parallel leftScheme rightScheme -> 
                                      									 let leftPart  = totalResistance leftScheme
                                      									     rightPart = totalResistance rightScheme
                                      									 in (leftPart * rightPart) / (leftPart + rightPart)
                                      Serial leftScheme rightScheme   -> (totalResistance leftScheme) + (totalResistance rightScheme)
-- Testing part --
test = totalResistance (Serial (Parallel (Resistance 4) (Resistance 4)) (Resistance 3))
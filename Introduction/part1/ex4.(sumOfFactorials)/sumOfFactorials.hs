-- Factorial -- 
factorial n = factorialMod n 1
factorialMod 1 result = result
factorialMod n result = factorialMod (n - 1) (result * n)  
 
-- Main function --
sumfact n = sumfactMod n 0 (factorial n)
-- Help function --
sumfactMod 0 accumulator baseValue = accumulator
sumfactMod n accumulator baseValue = sumfactMod (n - 1) (accumulator + baseValue) (baseValue / n)

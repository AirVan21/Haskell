-- Main function --
sumsqr n = sumsqrMod n 0 0
-- Help function --
sumsqrMod 0 justSum sumOfSquares = (justSum ^ 2) - sumOfSquares
sumsqrMod n justSum sumOfSquares = sumsqrMod (n - 1) (justSum + n) (sumOfSquares + (n ^ 2))
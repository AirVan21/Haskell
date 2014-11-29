{-- Task 

	For Expr data type implement 'simplify'function

--}

{--
	Describing common Expr type
--}
data Expr =  Num Integer | X | Add Expr Expr | Mult Expr Expr
			deriving (Show, Eq)
   
-- Simplifing Multiplication --
simplify (Mult expr1 expr2) = let
                                 leftRes  = simplify expr1 
                                 rightRes = simplify expr2 
                              in if (leftRes == (Num 0) || rightRes == (Num 0))
                                 then (Num 0)
                                 else (Mult expr1 expr2)

-- Simplify Add parameters --  
simplify (Add expr1 expr2) = Add (simplify expr1) (simplify expr2)

-- Set Rest Expressions not simplified --
simplify param = param
{-- Task 

	For Expr data type implement evaluation function

--}

{--
	Describing common Expr type
--}
data Expr =  Num Integer | X | Add Expr Expr | Mult Expr Expr
			deriving Show
-- Constant expression --
eval (Num constant) value = constant
-- Substitution in expression --
eval (X) value = value
-- Addition implementation --
eval (Add expr1 expr2) value = let
                                   leftRes  = eval expr1 value
                                   rightRes = eval expr2 value
                               in (leftRes + rightRes)   
-- Multiplication implementation --
eval (Mult expr1 expr2) value = let
                                   leftRes  = eval expr1 value
                                   rightRes = eval expr2 value
                                in (leftRes * rightRes)   

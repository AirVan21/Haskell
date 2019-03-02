{-- Task 

	For Expr data type implement evaluation function

--}

{--
	Describing common Expr type
--}
data Expr =  Num Integer | X | Add Expr Expr | Mult Expr Expr
			deriving Show

{--
	Differentiation implementation
--}

diff (Num value) = (Num 0)

diff X = (Num 1)

diff (Add expr1 expr2) = Add (diff expr1) (diff expr2)

diff (Mult expr1 expr2) = Add (Mult (diff expr1) expr2) (Mult expr1 (diff expr2)) 
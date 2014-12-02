{-- Task
	
	Expression with variables and let

--}

-- Implementing find on pair list --
{-- Default variable value is 0 --}
find func [] = 0 
find func (x:xs) = if func (fst x)
                   then (snd x)
                   else find func xs

-- Descibing type of Expression with variables --
data Expr =  Num Integer | Var String | Add Expr Expr | Mult Expr Expr | Let String Expr Expr
		deriving Show

-- Const expression --
eval (Num constant) varList = constant

-- Addition implementation --
eval (Add expr1 expr2) = let 
                            leftRes  = eval expr1 varList
                            rightRes = eval expr2 varList
                        in (leftRes + rightRes)

-- Multiplication implementation --
eval (Mult expr1 expr2) = let 
                              leftRes  = eval expr1 varList
                              rightRes = eval expr2 varList
                          in (leftRes * rightRes)

-- Adding extra variable, using let syntax --
eval (Let name expr1 expr2) = 


eval ( Let "x" ( Num 5 ) (Let "y" ( Mult ( Var "x" ) ( Var "x" ) ) ( Let "x" (Num 10) ( Add (Var "y") (Num 1) ) ) ) )
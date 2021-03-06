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
eval (Add expr1 expr2) varList = let 
                                    leftRes  = eval expr1 varList
                                    rightRes = eval expr2 varList
                                 in (leftRes + rightRes)

-- Multiplication implementation --
eval (Mult expr1 expr2) varList = let 
                                     leftRes  = eval expr1 varList
                                     rightRes = eval expr2 varList
                                  in (leftRes * rightRes)

-- Substitution in expression --
eval (Var name) varList = find (==name) varList

-- Adding extra variable, using let syntax --
eval (Let name expr1 expr2) varList = let 
                                         temp = eval expr1 varList
                                      in eval expr2 ((name,temp) : varList)
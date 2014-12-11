{-- Task
	
	Expression with variables and let

--}

-- Descibing type of Expression with variables --
data Expr =  Num Integer | Var String | Add Expr Expr | Mult Expr Expr | Let String Expr Expr
		deriving Show


-- Const expression --
eval (Num constant) exprList = constant

-- Addition implementation --
eval (Add expr1 expr2) exprList = let 
                                      leftRes  = eval expr1 exprList
                                      rightRes = eval expr2 exprList
                                   in (leftRes + rightRes)

-- Multiplication implementation --
eval (Mult expr1 expr2) exprList = let 
                                      leftRes  = eval expr1 exprList
                                      rightRes = eval expr2 exprList
                                    in (leftRes * rightRes)

-- Adding extra variable, using let syntax --
eval (Let name expr1 expr2) exprList = eval expr2 ((name, expr1) : exprList)

-- Performing exectution --
eval (Var name) exprList = let 
                              scope = cut name exprList
                           in eval (snd (head scope)) (tail scope)

-- Cut all visible on that point variables --
cut name (x:xs) = if (name == fst x) 
                  then (x:xs)
                  else cut name xs                               
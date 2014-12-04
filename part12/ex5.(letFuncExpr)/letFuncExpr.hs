{-- Task
  
  Expression with variables and let

--}

-- Implementing find on tuple list --

find func (el:xs) = if func ((\(x, y, z) -> x) el)
                    then ((\(x, y, z) -> y) el, (\(x, y, z) -> z) el)
                    else find func xs


-- Descibing type of Expression with variables --
data Expr =  Num Integer | Var String | Add Expr Expr | Mult Expr Expr | Let String Expr Expr | LetFunc String String Expr Expr | Call String Expr
    deriving Show



{-- So, seems it work. 

  I have used Laze calculation from previous task.
  Added extra (Name Function, Variable Name, Expresson) three-tuple list for function description.
  On LetFunc I add Function in function list. On 'Call' I get expression for function from list and perform calculation (laze one) 
  for variable, which was represented in function description (move into variable list).

--}

-- Const expression --
eval (Num constant) exprList funcList = constant

-- Addition implementation --
eval (Add expr1 expr2) exprList funcList = let 
                                               leftRes  = eval expr1 exprList funcList
                                               rightRes = eval expr2 exprList funcList
                                           in (leftRes + rightRes)

-- Multiplication implementation --
eval (Mult expr1 expr2) exprList funcList = let 
                                                leftRes  = eval expr1 exprList funcList
                                                rightRes = eval expr2 exprList funcList
                                            in (leftRes * rightRes)

-- Adding extra variable, using let syntax --
eval (Let name expr1 expr2) exprList funcList = eval expr2 ((name, expr1) : exprList) funcList

-- Performing exectution --
eval (Var name) exprList funcList = let 
                                      scope = cut name exprList
                                    in eval (snd (head scope)) (tail scope) funcList

-- Adding LetFunc construction --
eval (LetFunc nameFunc nameVar expr1 expr2) exprList funcList = eval expr2 exprList ((nameFunc, nameVar, expr1) : funcList)

-- Performing Function Calculation -- 
eval (Call nameFunc expr1) exprList funcList = let 
                                                  funcExpr = find (==nameFunc) funcList
                                               in eval (snd funcExpr) (((fst funcExpr), expr1) : exprList) funcList  

-- Cut all visible on that point variables --
cut name (x:xs) = if (name == fst x) 
                  then (x:xs)
                  else cut name xs









                 
-- Vector length calculation -- 
cond = \((x1,y1), (x2,y2)) -> sqrt ((x1 - x2)^2 + (y1 - y2)^2)
-- Checking for equal elements in 3-elemnt list --
equal (el1:el2:el3:[]) = el1 == el2 || el2 == el3 || el1 == el3
-- Result function -- 
isosc pt1 pt2 pt3 = equal (map cond [(pt1,pt2), (pt2,pt3), (pt1,pt3)])  

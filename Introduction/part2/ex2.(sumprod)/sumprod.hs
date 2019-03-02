-- Main function --
sumprod sumList = sumprodHelp  0 sumList
-- Last multiplication function -- 
sumprodHelp result (top:pretop:[]) = result + top * pretop
-- General case function --
sumprodHelp result (top:pretop:rest) = sumprodHelp (result + top * pretop) (pretop:rest)
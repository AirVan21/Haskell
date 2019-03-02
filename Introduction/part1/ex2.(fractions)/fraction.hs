-- Main function --
b arg = b' arg (1 / arg) 
-- Help function --
b' 1 result = result
b' num result = b' (num - 1) (1 / (num - 1 + result))  
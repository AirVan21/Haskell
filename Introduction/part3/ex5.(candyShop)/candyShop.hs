-- Type declaration -- 
data Candy = Cake String Double | Sweets String Double Double
-- Price calculation  -- 
price (Cake _ cost) = cost
price (Sweets _ cost weight) = cost * weight -- weight in kg
totalPrice candyList = sum (map price candyList)
-- Test (totalPrice == 1000) --
test = totalPrice [(Cake "Наполеон" 350), (Sweets "Маска" 400 0.5), (Sweets "Raffaello" 600 0.250), (Cake "Тирамису" 300)]
 
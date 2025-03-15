import System.Win32 (xBUTTON1)
soma :: Int -> Int -> Int 
soma x y = x + y 

produto :: Int -> Int -> Int 
produto x 0 = 0
produto x y = soma x (produto x(y - 1))

produtoCerto :: Int -> Int -> Int
produtoCerto x y = x * y

potencia :: Int -> Int -> Int
potencia x 0 = 1
potencia x y = produtoCerto x (potencia x (y - 1))

subtracao :: Int -> Int -> Int 
subtracao x y = x - y

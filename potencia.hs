import System.Win32 (xBUTTON1)

potencia :: Int -> Int -> Int
potencia x 0 = 1
potencia x 1 = x
potencia x y = x * potencia x y-1
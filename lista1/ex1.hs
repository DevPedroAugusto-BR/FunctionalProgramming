f :: Float -> Float
f 0 = 2
f x 
  | (x > 0) = (x+4) / (x+2)
  | otherwise = 2 / x


fg :: Int -> Int -> Int  
fg x y 
    | (x >= y) = x + y 
    | otherwise = x - y 

fh :: Int -> Int -> Int -> Int
fh x y z 
    | (x + y) > z = x + y + z
    | (x + y) < z = x - y - z
    | otherwise = 0
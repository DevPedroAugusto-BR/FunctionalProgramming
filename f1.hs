function :: Int -> Float
function 0 = 2 
function x 
    | x >= 0 = (x + 4) / (x + 2)
    | otherwise = 2 `div` x


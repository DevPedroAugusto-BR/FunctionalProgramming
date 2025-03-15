soma1 :: Int -> Int
soma1 1 = 1
soma1 n = n + soma1 (n-1)
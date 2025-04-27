contList :: Int -> [Int] -> Int
contList _ [] = 0
contList x (a:b)
    | x == a = 1 + contList x b
    | otherwise contList x b 


{-- função que exclui a penúltima ocorrência de um elemento em uma lista --}
exclude :: Int -> Int -> [Int] -> [Int]
exclude _ _ [] = []
exclude _ _ (a:[]) = [a]
exclude r c (a:x)
    | c == 2 && r == a = x
    | r == a = a : exclude r (c-1) x
    | otherwise = a: exclude r c x 
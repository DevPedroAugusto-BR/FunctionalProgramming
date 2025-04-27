{- Função que retorna a soma dos elementos de uma lista-}

sumLista :: [Int] -> Int 
sumLista [] = 0
sumLista (x:xs) = x + sumLista xs 

{-Localiza um dado elemento em uma lista-}
getElemInList :: Int -> [Int] -> Bool
getElemInList _ [] = False
getElemInList x (a:xs)
    | x == a = True
    | otherwise = getElemInList x xs

{-03 remove todas ocorrências de y em uma lista -}
deleteList::Int->[Int]->[Int]
deleteList _ [] = []
deleteList y (a:xs)
    | y == a = deleteList y xs
    | otherwise = a:deleteList y xs

{-04 remove o primeiro elemento de uma lista -}
removeFirst::Int->[Int]->[Int]
removeFirst _ [] = []
removeFirst y (x:xs)
    | y == x = xs
    | otherwise = x:removeFirst y xs

{-05 remove o último elemento de uma lista -}
removeLast::Int->[Int]->[Int]   
removeLast _ [] = []
removeLast y (x:xs)
    | y == x && xs == [] = []
    | y == x = x:xs
    | otherwise = x:removeLast y xs

{-06 remove o último elemento de uma lista -}
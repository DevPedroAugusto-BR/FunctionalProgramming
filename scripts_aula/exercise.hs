--Defina uma função que retorna o último elemento de uma lista 
ultimo :: [Int] -> Int  
ultimo [x] = x
ultimo (a:x) = ultimo x 

--Escreva uma função que inverta uma lista 
inverteMeuNome :: [Char] -> [Char]
inverteMeuNome [] = []
inverteMeuNome (a:x) = inverteMeuNome x ++ [a]

--Soma dos elementos de uma lista
somaLista :: [Int] -> Int
somaLista [] = 0
somaLista (x:xs) = x + somaLista xs 

--Produto dos elementos de uma lista 
produtoLista :: [Int] -> Int 
produtoLista [x] = x
produtoLista (x:xs) = x * produtoLista xs  

--Conta quantos elementos são maiores que um valor x
contaMaior :: Int -> [Int] -> Int
contaMaior _ [] = 0
contaMaior x (a:b)
    | a > x = 1 + contaMaior x b
    | otherwise = contaMaior x b

--Soma dois pares de duplas
somaDupla :: (Int, Int) -> (Int, Int) -> Int
somaDupla (a, b) (c , d) = a+b+c+d

--Inverte os elementos de uma dupla
inverteDupla :: (Int, Int) -> (Int, Int) 
inverteDupla (a, b) = (b, a)

--Pega os "n" primeiros elementos de uma lista
get_n :: Int -> [a] -> [a]
get_n 0 _ = []
get_n _ [] = []
get_n (x:xs) = get_n (x-1) xs
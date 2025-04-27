inverteInt :: Int -> Int
inverteInt n = inverteIntAux n 0

inverteIntAux :: Int -> Int -> Int
inverteIntAux 0 acc = acc
inverteIntAux n acc = inverteIntAux (n `div` 10) (acc * 10 + n `mod` 10)

fatorial :: Int -> Int
fatorial 0 = 1
fatorial x = x * fatorial (x - 1)

--Quantas maneiras de escolher n objetos em M objetos
nCr :: Int -> Int -> Int
nCr m n = fatorial m `div` fatorial n * fatorial (m - n)

--9 Função que retorna quantos múltiplos de n existem entre 1 e m
multiplo :: Int -> Int -> Int -> Int
multiplo a m n
    | m > n = 0
    | a `mod` m == 0 = 1 + multiplo a (m + 1) n
    | otherwise = multiplo a (m + 1) n

--10 Função que retorna o último dígito de um número inteiro
ultimoDigito :: Int -> Int
ultimoDigito n = n `mod` 10

--11 Função que retorna o dígito de um número inteiro de acordo com a posição informada


--12 Função para identificar se três números inteiros são todos diferentes entre si, da seguinte forma:
allDiferent :: Int -> Int -> Int -> Bool
allDiferent m n p 
    | m /= n && m /= p && n /= p = True
    | otherwise = False


--13 Função que retorne quantos dos três números inteiros fornecidos são iguais. A resposta poderá ser 3, 2 ou 0.
howManyEqual :: Int -> Int -> Int -> Int
howManyEqual a b c 
    | a == b && b == c = 3
    | a == b || a == c || b == c = 2
    | otherwise = 0

--17 Função que converte uma letra minúscula em maiúscula, ou seja, de 'a' para 'A', de 'b' para 'B', etc.
-- A função deve ser chamada de maiuscula.
toLowerCase :: Char -> Char 
toLowerCase x 
    | fromEnum x >= 97 && fromEnum x <= 122 = toEnum (fromEnum x - 32)
    | otherwise = x 


charToNum :: Char -> Int
charToNum c 
    | (fromEnum c) >= 48 && (fromEnum c) <= 57 = (fromEnum c) - 48
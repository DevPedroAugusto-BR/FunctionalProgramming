import Data.Void (vacuous)

periodo = 7

answer :: Int
answer = 42

square :: Int -> Int
square x = x * x

allEqual :: Int -> Int -> Int -> Bool 
allEqual m n p = (m==n) && (n==p)

maxi :: Int -> Int -> Int 
maxi m n 
    | m >= n = m 
    | otherwise = n 

soma x y = x + y 
--Neste caso, a operação de soma já está definido, portanto o compilador entende que ele pode efetuar essa operação

f :: Int -> Int 
f 0 = 3
f 1 = 9
f 2 = 7
f 3 = 15
f 4 = 14
f 5 = 8
f 6 = 0
f x = -1

{-Faça uma função que retorne a maior venda da semana.-}
maiorVenda :: Int -> Int -> Int 
maiorVenda 0 v = v 
maiorVenda d v 
    | f d > v = maiorVenda (d - 1) (f d)
    | otherwise = maiorVenda (d -1) v

--Uma outra forma de fazê-la sem casamento de padrão
outraMaiorVenda :: Int -> Int -> Int
outraMaiorVenda d v 
    | d == 0 = v
    | f d > v = outraMaiorVenda (d - 1) (f d)
    | otherwise = outraMaiorVenda (d - 1) v

maiorV :: Int 
maiorV = maiorVenda periodo 0
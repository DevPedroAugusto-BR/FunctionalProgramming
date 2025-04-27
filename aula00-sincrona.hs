import Data.Void (vacuous)
import Graphics.Win32 (dM_GETDEFID)

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
f 1 = 3
f 2 = 9
f 3 = 7
f 4 = 15
f 5 = 14
f 6 = 8
f 7 = 0
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

--Implemente uma função que retorne o dia em que houve a maior venda
diaMaiorVenda :: Int -> Int
diaMaiorVenda 1 = 1
diaMaiorVenda y 
  | f y >= f (diaMaiorVenda (y - 1)) = y 
  | otherwise = diaMaiorVenda(y - 1)

diaMV :: Int -> Int -> Int 
diaMV d mv 
  | f d == maiorV = d
  | otherwise = diaMV (d - 1) maiorV 

vendaMedia :: Int -> Int -> Int
vendaMedia p m = m `div` p 

totalVendas :: Int -> Int 
totalVendas p
  | p == 0 = p 
  | otherwise = p + totalVendas(p-1)
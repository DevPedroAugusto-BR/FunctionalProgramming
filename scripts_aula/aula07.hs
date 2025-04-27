import Data.Char

-- uso do $$
--------------------------------
--zip [1,2,3] ["a","bb", "ccc"]
--unzip $$
--------------------------------
-- 3+5
-- 32 - $$


{- função que faz um produto cartesiano entre duas listas
   sendo uma dada como parâmetro e outra gerada dentro da função-}
   
f1 l = [ (a,b) | a <-l, b<-['a'..'z']]

{-função que gera tupla informando se o caractere é:
   letra minúscula
   letra maiúscula
   alfanumérico
   outro
 fa e fb são auxiliares.-}  
   
fa::Char -> (Bool,Bool,Bool)
fa c = (c>='a' && c<='z',
       c>='A' && c<='Z',
         c>='0' && c<='9')

fb:: Char -> (Bool,Bool,Bool) -> (Bool,Bool,Bool, Bool)
fb x (a, b, c) = (a, b, c, not (a||b||c))

f2:: Char -> (Bool,Bool,Bool, Bool)
f2 c = fb c (fa c)

{- funções que recebem uma 4-Tupla e retornam um elemento pela posição-}

f1T4::(a, b, c, d) -> a
f1T4 (a, b, c, d) = a

f2T4::(a, b, c, d) -> b
f2T4 (a, b, c, d) = b

f3T4::(a, b, c, d) -> c
f3T4 (a, b, c, d) = c

f4T4::(a, b, c, d) -> d
f4T4 (a, b, c, d) = d

{-função que recebe uma lista [(Char,Bool)] e seleciona para o 
  resultado [Char] apenas os caracteres das duplas com o Bool False -}
f3 :: [(Char,Bool)] -> [Char]
f3 l = [a| (a,b)<-l, not(b)]  

{-função que faz tudo que f3, mas inclui a condição Char letra minúscula-}

f4 ::  [(Char,Bool)] -> [Char]
f4 l = [a | (a,b)<-l , not(b), f1T4(f2 a)]

{-função genérica equivalente à f4 para escolher o tipo de caractere-}

f4a :: ((Bool, Bool, Bool, Bool) -> Bool)-> [(Char,Bool)] -> [Char]
f4a f l = [a | (a,b)<-l , not(b), f(f2 a)]



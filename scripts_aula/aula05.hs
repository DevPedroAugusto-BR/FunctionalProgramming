import Data.Char

{- faça a função f1 que receba uma String S
e Retorne uma String R.
R deve ser igual a S, com exceção de que
todo caracter númérico x encontrado em S
determinará que o caracter de S que segue
o x será repetido x vezes-}
 
f1::[Char]->[Char]
f1      [] = []
f1   (a:[]) = a:[]
f1 (x:y:xs)
   |isDigit (x) = x:(repete (ord (x) - ord ('0')) y) ++ f1 (xs)
   |otherwise   = x:f1 (y:xs)

repete::Int->Char->String
repete 0 _ = ""
repete x c = c:repete (x-1) c

{-faça a função f2 que receba uma lista de
Strings e aplique a todas as strings a 
computação da função f1-}

{-faça a função f3 que receba uma String S 
e retorne uma dupla de Bool e String.
A string de saída deve ter o caracter
da ordem alfabética das letras minúsculas
por substituição a cada caracter numérico
que aparece em S. O bool deve informar se 
a entrada foi ou não alterada.
Ex:  f3 "a2c4x" retorna ("abcdx", True)-}

hasDigit::String->Bool
hasDigit [] = False
hasDigit (a:b) = isDigit a || hasDigit b













--Litas
--apaga todas ocorrências de y na lista

apaga :: [Int] -> Int -> [Int]
apaga [] _ = []
apaga (a:x) y
  | a == y = apaga x y 
  | otherwise = a:(apaga x y)

tamanhoLista :: [N] -> Int
tamanhoLista [] = 0
tamanhoLista (a:x) = 1 + tamanhoLista (x)

ocorrencia :: [Int]-> Int -> Int 
ocorrencia [] _ = 0
ocorrencia (a:b) x 
  |a==x = 1+ ocorrencia b x
  |otherwise = ocorrencia b x

app :: [Int]->Int->Int->[Int]
app [] _ _ = [] 
app l _ 0 = l
app l _ 1 = l
app (a:b) x i 
  | a==x && i ==2 = b
  | a==x          = a:(app b x (i-1))
  | otherwise     = a:(app b x (i)) 

appS::[Int]->Int->[Int]
appS l x = app l x (ocorrencia l x)

--inverte elementos da lista
--inverteLista :: [Int] -> [Int]
inverteLista [] = []
inverteLista (a:x) = (inverteLista x) ++ [a]

--inverte elementos das listas internas
inverteTodas :: [[Int]]->[[Int]]
inverteTodas [] = []
inverteTodas (a:x) = (inverteLista a) : inverteTodas x
--inverteTodas (a:x) = [(inverteLista a)] ++ inverteTodas x















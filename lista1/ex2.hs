{- Localize, explique e corrija o erro na função que deve calcular
o fatorial de um número, como se segue -}

{-
fat :: Int -> Int
fat x = x * fat(x - 1)

O erro principal da função acima está em não definir um critério de parada.
Nestas condições, teremos um loop infinito, pois não há uma definição clara de onde
se deve parar. 
Vamos implementar a função coretamente
-}

fat :: Int -> Int 
fat 0 = 1
fat x = x * fat(x - 1)
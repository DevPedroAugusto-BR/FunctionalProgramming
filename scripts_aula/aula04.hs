import Data.Char


f2 :: [(Int,Char)]->([Int],[Char])
f2 [] = ([],[])
f2 ((a,b):x) = (a:fst(f2(x)), b:snd(f2(x)))

f3 :: [(Int,Char)]->([Int],[Char])
f3 x = (geraLInt x , geraLChar x)

geraLInt :: [(Int,Char)]->[Int]
geraLInt [] = []
geraLInt (a:x) = fst a:geraLInt x

geraLChar:: [(Int,Char)]->[Char]
geraLChar [] = []
geraLChar (a:x) = snd a:geraLChar x

--gera tabela ascii
f4 (-1) = []
f4 x = (x, chr x): f4 (x-1)











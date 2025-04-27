-- define o período de recursão
periodo::Int
periodo = 7

-- tabela de vendas
vendas :: Int -> Int
vendas 0 = 0
vendas 1 = 41
vendas 2 = 72
vendas 3 = 48
vendas 4 = 0
vendas 5 = 91
vendas 6 = 55
vendas 7 = 30

-- função que retorna uma lista de vendas
listaVendas :: Int-> [Int]
listaVendas (-1) = []
listaVendas x = (vendas x) : listaVendas (x-1)


-- função que retorna lista de lista com dia e venda

-- função que retorna uma lista de vendas
listaDiaVendas :: Int-> [[Int]]
listaDiaVendas (-1) = []
listaDiaVendas x = [x, (vendas x)] : listaDiaVendas (x-1)

-- função que ordena uma lista de inteiros
ordenaLista::[Int]->[Int]
ordenaLista [] = []
ordenaLista (a:x) = insereElementoLista a (ordenaLista x)

-- função que insere um elemento em uma lista ordenada
insereElementoLista::Int->[Int]->[Int] 
insereElementoLista a [] = [a]
insereElementoLista a (b:c) 
  |a>b = b:(insereElementoLista a c)
  |otherwise = a:(b:c)

-- função que ordena lista de lista pelo primeiro elemento

ordenaListaLista::[[Int]]->[[Int]]
ordenaListaLista [] = []
ordenaListaLista ((a:x):y) = insereListaLista (a:x) (ordenaListaLista y)

-- função que insere lista de inteiro uma lista de lista ordenada
insereListaLista::[Int]->[[Int]]->[[Int]] 
insereListaLista (a:x) [] = [a:x]
insereListaLista (a:x) ((b:y):c) 
  |a>b = (b:y):(insereListaLista (a:x) c)
  |otherwise = (a:x):((b:y):c)





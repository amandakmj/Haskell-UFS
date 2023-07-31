--Dados dois números, determine o menor deles.
menorDois :: Int -> Int -> Int
menorDois x y
    |x >= y = y
    |otherwise = x

--Dados três números, determine o menor deles
menorTres :: Int -> Int -> Int -> Int
menorTres x y z
    |x >= y = y
    |y >= z = z
    |otherwise = x 

--Crie uma função nAnd usando casamento de Padrões que dada duas variaveis Booleanas
--retorna True em todos os casos, a não ser se as duas forem verdadeiras
nAnd :: Bool -> Bool -> Bool
nAnd True True = False
nAnd _ _ = True

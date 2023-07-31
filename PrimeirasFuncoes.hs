
--Faça um programa que recebe dois números e retorna sua soma
dobro :: Int -> Int
dobro x = 2*x

--Faça um programa que recebe dois números e retorna um valor booleano indicando se o primeiro número é menor do que o segundo
soma :: Int -> Int -> Int
soma x y = x+y

--Faça um programa que recebe um numero e retorna um valor booleano indicando se ele é par ou não
par :: Int -> Bool
par x = x `mod` 2 == 0

--Faça um programa que recebe três números e retorna um valor booleano indicando se são todos iguais ou não
iguais :: Int -> Int -> Int -> Bool
iguais x y z = x == y && y == z

--Dados dois inteiros , retornar o triplo da divisão inteira destes números
triplo :: Int -> Int -> Int
triplo x y = (x `div` y)*3


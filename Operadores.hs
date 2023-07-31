import Data.Char

--Dados dois caracteres, retornar um booleano indicando se eles estão em ordem alfabética
alfabetica :: Char -> Char -> Bool
alfabetica a1 a2 = a1 <= a2

--Dados dois caracteres, retornar o menor deles de acordo com a ordem alfabética
menor :: Char -> Char
menor a1 a2 
 |a1 < a2 = a1
 |otherwise = a2
 
--Dados dois inteiros, retornar True se forem iguais em valor absoluto; caso contrário, retornar False
valorAbsoluto :: Int -> Int -> Bool
valorAbsoluto x y = x == y

--Converter graus em radianos
grausRad :: Double -> Double 
grausRad x = x * (pi / 180.0)

--Faça uma implementação do seno e do cosseno que recebam um valor em graus como entrada.
senoGraus :: Double -> Double
senoGraus x = sin (grausRad x)

cossenoGraus :: Double -> Double
cossenoGraus x = cos (grausRad x)

--Dados os coeficientes a, b e c de uma equação de segundo grau ax2 + bx + c=0
--Usando Bhaskara, defina duas funções, uma para calcular a raiz menor e outra a raiz maior. 
--Se a equação não tiver raízes, as funções deverão retornar error
raizes :: Int -> Int -> Int -> Int
raizes 



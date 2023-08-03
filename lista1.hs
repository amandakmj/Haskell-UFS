--Escreva uma função que recebe um número real. Se esse número for maior ou igual a cinco,
--ela deve retornar a mensagem “Aluno aprovado”. Caso contrário, ela deve retornar a mensagem “Aluno reprovado”.
aluno :: Float -> String
aluno numero
   | numero >= 5.0 = "Aluno aprovado"
   | otherwise = "Aluno reprovado"

--Escreva uma função que retorna a mensagem “Válido” se, dado um número digitado pelo
--usuário, esse número é maior ou igual a zero e menor ou igual a 10.
mensagem :: Float -> String
mensagem n
   | n >= 0 && n <= 10 = "Valido"
   | otherwise = "Invalido"

--Faça uma função que receba 3 notas de um aluno, calcule e retorne uma mensagem contendo a
--média aritmética e a situação constante na tabela a seguir:
--Média Aritmética Situação
--[0,0, 3,0) Reprovado
--[3,0, 7,0) Prova Final
--[7,0, 10,0] Aprovado 

mediaAritmetica :: Float -> Float -> Float -> String
mediaAritmetica a b c 
      | media >= 0 && media <= 3 = "Reprovado"
      | media >= 3 && media <= 7 = "Prova Final"
      | otherwise = "Aprovado"
   where 
      media = (a+b+c)/3

--Faça uma função que recebe 2 valores reais, que correspondem a duas notas de um aluno. A seguir, calcule a média do aluno, sabendo que a primeira nota
tem peso 3.5 e a segunda nota tem peso 7.5 (A soma dos pesos, portanto, é 11). Assuma que
cada nota pode ir de 0 até 10.0.


Faça uma função que recebe o código correspondente ao cargo de um funcionário e seu
salário atual. Ela deve retornar uma mensagem contendo o cargo, o valor do aumento e seu
novo salário.
Código Cargo Percentual
1 Escriturário 50%
2 Secretário 35%
3 Caixa 20%
4 Gerente 10%
5 Diretor Não tem aumento 





























delta :: Float -> Float -> Float -> Float
delta a b c = b*b - 4*a*c   

baskharaMaior :: Float -> Float -> Float -> Float
baskharaMaior a b c 
   | meu_delta >= 0 = ((-b) + sqrt (meu_delta))/ (2 * a) 
   | otherwise = error "Equação não possui raiz"
   where meu_delta = delta a b c
   
baskharaMenor :: Float -> Float -> Float -> Float
baskharaMenor a b c =
   if (meu_delta >= 0) then
      ((-b) - sqrt (meu_delta))/ (2 * a) 
   else 
      error "Equação não possui raiz"
   where meu_delta = delta a b c
   
resultado2 :: Float -> Float -> String    
resultado2 salario aumento = 
   "Valor do aumento: " ++ show (salario*aumento) ++ 
   ". \nNovo salario: " ++ show (salario*(1+aumento)) ++ ".\n"

promocao :: Int -> Float -> String
promocao codigo salario = 
   "Este(a) funcionario(a) e um " ++
   case codigo of
   1-> "Escriturario. " ++ resultado salario 0.5
   2-> "Secretario(a). "++ resultado salario 0.35
   3-> "Caixa. "        ++ resultado salario 0.2
   4-> "Gerente. "      ++ resultado salario 0.1
   5-> "Diretor. "      ++ resultado salario 0.0
   _-> error "Código inválido"
   where resultado :: Float -> Float -> String    
         resultado salario aumento = 
           "Valor do aumento: " ++ show (salario*aumento) ++ 
           ". \nNovo salario: " ++ show (salario*(1+aumento)) ++ ".\n"


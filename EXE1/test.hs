-- Meu primeiro programa em Haskell

-- Calcula o dobro de um numero
dobro :: Int -> Int 
dobro x = x + x

-- Calcula o quadruplo de um numero
quadruplo x = dobro (dobro x)

-- Calcula o quadruplo de forma diferente
quadruplo' x = 4 * x

-- Calcula a área de um círculo
areaCirculo raio = pi * raio^2 

-- Calculo da área de um retângulo
areaRetangulo b a = b * a

-- Calcula a soma de dois numeros
soma x y = x + y

-- Calcula a soma de tres numeros
somaTres :: Int -> Int -> Int -> Int
somaTres n1 n2 n3 = n1 + n2 + n3

-- Calcula a soma de tres numeros de forma diferente
somaTres' n1 n2 n3 = soma (soma n1 n2) n3

-- Calcula a area de um triangulo
areaTriangulo :: Double -> Double -> Double -> Double
areaTriangulo a b c = let s = (a + b + c) / 2
                        in sqrt (s * (s - a) * (s - b) * (s - c))

-- Calcula a area do triangulo de forma diferente
areaTriangulo' a b c = sqrt (s * (s - a) * (s - b) * (s - c))
                       where
                           s = (a + b + c) / 2

-- Uma funcao mais avançada
minhaFuncao x = 3 + f x + f a + f b
                where 
                    f x = x + 7 * c
                    a = 3 * c
                    b = f 2
                    c = 10
-- Função manipulando listas
primeiroOuVazia :: [[Char]] -> [Char]
primeiroOuVazia lst = if not (null lst)
                      then head lst
                      else "vazia"


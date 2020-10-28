module Cliente where 

data Cliente = OrgGov String
             | Empresa String Int String String
             | Individuo Pessoa Bool
             deriving Show 

data Pessoa = Pessoa String String Genero
            deriving Show

data Genero = Masculino | Feminino | Outro
            deriving Show

-- Função para obter o nome de um cliente
nomeCliente :: Cliente -> String
nomeCliente c = case c of 
                    OrgGov nome                 -> nome
                    Empresa nome id resp cargo  -> nome
                    Individuo p ads             ->
                        case p of 
                            Pessoa pn sn g      -> pn ++ " " ++ sn

nomeCliente' :: Cliente -> String
nomeCliente' c = case c of 
                    OrgGov nome                    -> nome
                    Empresa nome _ _ _             -> nome
                    Individuo (Pessoa pn sn _) _   -> pn ++ " " ++ sn

nomeCliente'' :: Cliente -> String
nomeCliente'' (OrgGov n) = n 
nomeCliente'' (Empresa n _ _ _) = n
nomeCliente'' (Individuo (Pessoa pn sn _) _) = pn ++ " " ++ sn


nomeEmpresa :: Cliente -> String 
nomeEmpresa c = case c of 
                   Empresa nome _ _ _ -> nome

nomeEmpresa' :: Cliente -> Maybe String
nomeEmpresa' c = case c of 
                   Empresa nome _ _ _ -> Just nome
                   _                  -> Nothing


primeiro :: (String, String) -> String
primeiro (p, _) = p

terceiro :: (String, String, String) -> String
terceiro (_, _, t) = t

cabeca :: [Int] -> Int
cabeca (c:_) = c

cauda :: [Int] -> [Int]
cauda (_:resto) = resto






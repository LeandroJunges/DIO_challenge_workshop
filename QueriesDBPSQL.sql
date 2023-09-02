
 --Recuperação simples com SELECT Statement
SELECT * FROM Cliente;

-- Filtros com WHERE Statement
SELECT * FROM Carro WHERE Marca = 'Honda';

-- calcula o preço total das peças de reposição usadas emuma ordem de serviço especifica

SELECT o.ID AS OrdemDeServico_ID, 
       SUM(p.Preco) AS PrecoTotal
FROM OrdemDeServico o
JOIN OrdemDeServico_PecaDeReposicao op ON o.ID = op.OrdemDeServico_ID
JOIN PecaDeReposicao p ON op.PecaDeReposicao_ID = p.ID
WHERE o.ID = 4
GROUP BY o.ID;

-- Esta consulta recupera todas as ordens de serviço da tabela OrdemDeServico ordenadas pela data de abertura em ordem decrescente.
SELECT * FROM OrdemDeServico
ORDER BY Data_Abertura DESC;


--Esta consulta recupera a contagem de ordens de serviço para cada mecânico, mas apenas para mecânicos que realizaram mais de duas ordens de serviço.
SELECT m.Nome AS Mecanico, 
       COUNT(o.ID) AS TotalOrdensDeServico
FROM Mecanico m
JOIN OrdemDeServico o ON m.ID = o.Mecanico_ID
GROUP BY m.Nome
HAVING COUNT(o.ID) > 2;

--Esta consulta recupera informações sobre as ordens de serviço, incluindo detalhes do cliente e do carro associados a cada ordem.
SELECT o.ID AS OrdemDeServico_ID, 
       c.Nome AS Cliente, 
       c.Endereco AS EnderecoCliente, 
       carro.Modelo AS ModeloCarro
FROM OrdemDeServico o
JOIN Carro carro ON o.Carro_ID = carro.ID
JOIN Cliente c ON carro.Cliente_ID = c.ID;

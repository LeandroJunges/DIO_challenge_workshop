-- Inserir dados na tabela Cliente
INSERT INTO Cliente (Nome, Endereco, Telefone) VALUES
    ('João da Silva', 'Rua A, 123', '+55 11 1234-5678'),
    ('Maria Santos', 'Avenida B, 456', '+55 11 9876-5432'),
    ('Carlos Oliveira', 'Rua C, 789', '+55 11 5555-5555');

-- Inserir dados na tabela Carro
INSERT INTO Carro (Modelo, Marca, Ano_Fabricacao, Placa, Cliente_ID) VALUES
    ('Gol', 'Volkswagen', 2020, 'ABC1234', 1),
    ('Civic', 'Honda', 2019, 'DEF5678', 2),
    ('Corolla', 'Toyota', 2021, 'GHI9012', 2),
    ('Uno', 'Fiat', 2022, 'JKL3456', 3);

-- Inserir dados na tabela Mecanico
INSERT INTO Mecanico (Nome, Especializacao) VALUES
    ('José Pereira', 'Motor'),
    ('Ana Souza', 'Transmissão'),
    ('Luiz Santos', 'Freios');

-- Inserir dados na tabela OrdemDeServico
INSERT INTO OrdemDeServico (Data_Abertura, Descricao_Problema, Status, Carro_ID, Mecanico_ID) VALUES
    ('2023-01-15', 'Problema no motor', 'Em Andamento', 1, 1),
    ('2023-02-20', 'Troca de óleo', 'Concluída', 2, 2),
    ('2023-03-10', 'Freios desgastados', 'Em Andamento', 3, 3),
    ('2023-04-05', 'Problema na transmissão', 'Concluída', 4, 1);

-- Inserir dados na tabela PecaDeReposicao
INSERT INTO PecaDeReposicao (Nome, Preco, Quantidade_Estoque, Fornecedor_ID) VALUES
    ('Filtro de Óleo', 15.99, 100, 1),
    ('Pastilhas de Freio', 29.99, 50, 2),
    ('Correia Dentada', 12.50, 30, 1),
    ('Embreagem', 89.99, 20, 3);

-- Inserir dados na tabela Fornecedor
INSERT INTO Fornecedor (Nome, Endereco, Telefone) VALUES
    ('Fornecedor A', 'Rua X, 789', '+55 11 1111-1111'),
    ('Fornecedor B', 'Avenida Y, 456', '+55 11 2222-2222'),
    ('Fornecedor C', 'Rua Z, 123', '+55 11 3333-3333');

-- Inserir dados na tabela OrdemDeServico_PecaDeReposicao
INSERT INTO OrdemDeServico_PecaDeReposicao (OrdemDeServico_ID, PecaDeReposicao_ID) VALUES
    (1, 1),
    (2, 2),
    (3, 2),
    (4, 3),
    (4, 4);

CREATE DATABASE workshop;


-- Tabela Carro
CREATE TABLE Carro (
    ID bigserial PRIMARY KEY,
    Modelo VARCHAR(255),
    Marca VARCHAR(255),
    Ano_Fabricacao INTEGER,
    Placa VARCHAR(10),
    Cliente_ID INTEGER, -- Chave estrangeira que referencia a tabela Cliente
    FOREIGN KEY (Cliente_ID) REFERENCES Cliente(ID)
);
-- Tabela Cliente
CREATE TABLE Cliente (
    ID bigserial PRIMARY KEY,
    Nome VARCHAR(255),
    Endereco VARCHAR(255),
    Telefone VARCHAR(15)
);

-- Tabela Mecanico
CREATE TABLE Mecanico (
    ID bigserial PRIMARY KEY,
    Nome VARCHAR(255),
    Especializacao VARCHAR(255)
);

-- Tabela OrdemDeServico
CREATE TABLE OrdemDeServico (
    ID bigserial PRIMARY KEY,
    Data_Abertura DATE,
    Descricao_Problema TEXT,
    Status VARCHAR(20),
    Carro_ID INTEGER, -- Chave estrangeira que referencia a tabela Carro
    Mecanico_ID INTEGER, -- Chave estrangeira que referencia a tabela Mecanico
    FOREIGN KEY (Carro_ID) REFERENCES Carro(ID),
    FOREIGN KEY (Mecanico_ID) REFERENCES Mecanico(ID)
);

-- Tabela PecaDeReposicao
CREATE TABLE PecaDeReposicao (
    ID serial PRIMARY KEY,
    Nome VARCHAR(255),
    Preco NUMERIC(10, 2),
    Quantidade_Estoque INTEGER,
    Fornecedor_ID INTEGER, -- Chave estrangeira que referencia a tabela Fornecedor
    FOREIGN KEY (Fornecedor_ID) REFERENCES Fornecedor(ID)
);

-- Tabela Fornecedor
CREATE TABLE Fornecedor (
    ID serial PRIMARY KEY,
    Nome VARCHAR(255),
    Endereco VARCHAR(255),
    Telefone VARCHAR(15)
);


-- Tabela de relacionamento entre OrdemDeServico e PecaDeReposicao
CREATE TABLE OrdemDeServico_PecaDeReposicao (
    OrdemDeServico_ID INTEGER, -- Chave estrangeira que referencia a tabela OrdemDeServico
    PecaDeReposicao_ID INTEGER, -- Chave estrangeira que referencia a tabela PecaDeReposicao
    FOREIGN KEY (OrdemDeServico_ID) REFERENCES OrdemDeServico(ID),
    FOREIGN KEY (PecaDeReposicao_ID) REFERENCES PecaDeReposicao(ID)
);






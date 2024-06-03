-- Tabela de Contato
CREATE TABLE T_GS_CONTATO (
    idContato VARCHAR2(50) PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    email VARCHAR2(100) NOT NULL,
    telefone VARCHAR2(20) NOT NULL,
    idEndereco VARCHAR2(50),
    idOng VARCHAR2(50),
    FOREIGN KEY (idEndereco) REFERENCES T_GS_ENDERECO(idEndereco),
    FOREIGN KEY (idOng) REFERENCES T_GS_ONG(idOng)
);

-- Tabela de Endereço
CREATE TABLE T_GS_ENDERECO (
    idEndereco VARCHAR2(50) PRIMARY KEY,
    cep VARCHAR2(10) NOT NULL,
    lougradouro VARCHAR2(100) NOT NULL,
    complemento VARCHAR2(50),
    bairro VARCHAR2(50) NOT NULL,
    localidade VARCHAR2(50) NOT NULL,
    uf VARCHAR2(2) NOT NULL
);

-- Tabela de ONG
CREATE TABLE T_GS_ONG (
    idOng VARCHAR2(50) PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    pais VARCHAR2(50) NOT NULL,
    estado VARCHAR2(50) NOT NULL,
    areaAtuacao VARCHAR2(200) NOT NULL
);

-- Tabela de Praias
CREATE TABLE T_GS_PRAIAS (
    Id_praia VARCHAR2(50) PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    pais VARCHAR2(50) NOT NULL,
    estado VARCHAR2(50) NOT NULL,
    st_banho VARCHAR2(50) NOT NULL
);

-- Tabela de Plástico Produzido
CREATE TABLE T_GS_Plastico_Produzido (
    id_ano VARCHAR2(50) PRIMARY KEY,
    ano NUMBER NOT NULL,
    producao_anual NUMBER NOT NULL
);

-- Tabela de Qualidade do Ar e Água das Cidades
CREATE TABLE T_GS_QUALIDADE_AR_AGUA_CIDADE (
    id_cidade VARCHAR2(50) PRIMARY KEY,
    cidade VARCHAR2(100) NOT NULL,
    regiao VARCHAR2(50) NOT NULL,
    entidade VARCHAR2(100) NOT NULL,
    qualidade_do_ar VARCHAR2(50) NOT NULL,
    poluicao_agua VARCHAR2(50) NOT NULL
);

-- Criar a sequência para idOng
CREATE SEQUENCE seq_idOng
START WITH 1
INCREMENT BY 1
NOCACHE;

-- Criar o gatilho para idOng
CREATE OR REPLACE TRIGGER trg_idOng
BEFORE INSERT ON T_GS_ONG
FOR EACH ROW
BEGIN
    :NEW.idOng := 'ONG' || TO_CHAR(seq_idOng.NEXTVAL, 'FM00000');
END;

-- Inserir dados na tabela T_GS_ONG
INSERT INTO T_GS_ONG (nome, pais, estado, areaAtuacao)
VALUES ('Projeto Tamar', 'Brasil', 'Bahia', 'Conservação das tartarugas marinhas');

INSERT INTO T_GS_ONG (nome, pais, estado, areaAtuacao)
VALUES ('Instituto Baleia Jubarte', 'Brasil', 'Espírito Santo', 'Conservação das baleias jubarte e educação ambiental');

INSERT INTO T_GS_ONG (nome, pais, estado, areaAtuacao)
VALUES ('Instituto de Pesquisa e Conservação de Golfinhos', 'Brasil', 'Pernambuco', 'Conservação de golfinhos e pesquisa científica');

INSERT INTO T_GS_ONG (nome, pais, estado, areaAtuacao)
VALUES ('Instituto Araguaia', 'Brasil', 'Tocantins', 'Conservação da biodiversidade aquática e educação ambiental');

INSERT INTO T_GS_ONG (nome, pais, estado, areaAtuacao)
VALUES ('Associação MarBrasil', 'Brasil', 'Paraná', 'Conservação marinha, proteção de áreas costeiras e educação ambiental');

INSERT INTO T_GS_ONG (nome, pais, estado, areaAtuacao)
VALUES ('Instituto Meros do Brasil', 'Brasil', 'Bahia', 'Conservação das tartarugas marinhas');

INSERT INTO T_GS_ONG (nome, pais, estado, areaAtuacao)
VALUES ('Instituto Meros do Brasil', 'Brasil', 'Rio de Janeiro', 'Conservação dos meros (peixes grandes), pesquisa científica e educação ambiental');

INSERT INTO T_GS_ONG (nome, pais, estado, areaAtuacao)
VALUES ('Instituto Recifes Costeiros (IRCOS)', 'Brasil', 'Pernambuco', 'Conservação de recifes costeiros e biodiversidade marinha');

INSERT INTO T_GS_ONG (nome, pais, estado, areaAtuacao)
VALUES ('Instituto Biota de Conservação', 'Brasil', 'Alagoas', 'Conservação marinha, resgate de fauna marinha e pesquisa científica');

INSERT INTO T_GS_ONG (nome, pais, estado, areaAtuacao)
VALUES ('Instituto Argonauta para Conservação Costeira e Marinha', 'Brasil', 'São Paulo', 'Conservação marinha, resgate de animais marinhos e educação ambiental');




-- Inserir dados na tabela T_GS_ENDERECO
INSERT INTO T_GS_ENDERECO (idEndereco, cep, lougradouro, complemento, bairro, localidade, uf) VALUES ('END001', '12345678', 'Rua A', 'Apt 101', 'Centro', 'Cidade A', 'SP');
INSERT INTO T_GS_ENDERECO (idEndereco, cep, lougradouro, complemento, bairro, localidade, uf) VALUES ('END002', '23456789', 'Rua B', 'Apt 202', 'Zona Sul', 'Cidade B', 'RJ');
INSERT INTO T_GS_ENDERECO (idEndereco, cep, lougradouro, complemento, bairro, localidade, uf) VALUES ('END003', '34567890', 'Rua C', '', 'Zona Norte', 'Cidade C', 'MG');
INSERT INTO T_GS_ENDERECO (idEndereco, cep, lougradouro, complemento, bairro, localidade, uf) VALUES ('END004', '45678901', 'Rua D', 'Apt 303', 'Zona Leste', 'Cidade D', 'RS');
INSERT INTO T_GS_ENDERECO (idEndereco, cep, lougradouro, complemento, bairro, localidade, uf) VALUES ('END005', '56789012', 'Rua E', 'Casa 1', 'Zona Oeste', 'Cidade E', 'BA');

-- Inserir dados na tabela T_GS_PRAIAS
INSERT INTO T_GS_PRAIAS (Id_praia, nome, pais, estado, st_banho) VALUES ('PRAIA001', 'Praia do Forte', 'Brasil', 'Bahia', 'Excelente');
INSERT INTO T_GS_PRAIAS (Id_praia, nome, pais, estado, st_banho) VALUES ('PRAIA002', 'Praia de Copacabana', 'Brasil', 'Rio de Janeiro', 'Bom');
INSERT INTO T_GS_PRAIAS (Id_praia, nome, pais, estado, st_banho) VALUES ('PRAIA003', 'Praia de Ipanema', 'Brasil', 'Rio de Janeiro', 'Regular');
INSERT INTO T_GS_PRAIAS (Id_praia, nome, pais, estado, st_banho) VALUES ('PRAIA004', 'Praia da Pipa', 'Brasil', 'Rio Grande do Norte', 'Excelente');
INSERT INTO T_GS_PRAIAS (Id_praia, nome, pais, estado, st_banho) VALUES ('PRAIA005', 'Praia de Jericoacoara', 'Brasil', 'Ceará', 'Boa');

-- Inserir dados na tabela T_GS_Plastico_Produzido
INSERT INTO T_GS_Plastico_Produzido (id_ano, ano, producao_anual) VALUES ('ANO2020', 2020, 5000000);
INSERT INTO T_GS_Plastico_Produzido (id_ano, ano, producao_anual) VALUES ('ANO2021', 2021, 5500000);
INSERT INTO T_GS_Plastico_Produzido (id_ano, ano, producao_anual) VALUES ('ANO2022', 2022, 6000000);
INSERT INTO T_GS_Plastico_Produzido (id_ano, ano, producao_anual) VALUES ('ANO2023', 2023, 6500000);
INSERT INTO T_GS_Plastico_Produzido (id_ano, ano, producao_anual) VALUES ('ANO2024', 2024, 7000000);

-- Inserir dados na tabela T_GS_QUALIDADE_AR_AGUA_CIDADE
INSERT INTO T_GS_QUALIDADE_AR_AGUA_CIDADE (id_cidade, cidade, regiao, entidade, qualidade_do_ar, poluicao_agua) VALUES ('CID001', 'São Paulo', 'Sudeste', 'CETESB', 'Boa', 'Moderada');
INSERT INTO T_GS_QUALIDADE_AR_AGUA_CIDADE (id_cidade, cidade, regiao, entidade, qualidade_do_ar, poluicao_agua) VALUES ('CID002', 'Rio de Janeiro', 'Sudeste', 'INEA', 'Regular', 'Alta');
INSERT INTO T_GS_QUALIDADE_AR_AGUA_CIDADE (id_cidade, cidade, regiao, entidade, qualidade_do_ar, poluicao_agua) VALUES ('CID003', 'Salvador', 'Nordeste', 'INEMA', 'Boa', 'Baixa');
INSERT INTO T_GS_QUALIDADE_AR_AGUA_CIDADE (id_cidade, cidade, regiao, entidade, qualidade_do_ar, poluicao_agua) VALUES ('CID004', 'Porto Alegre', 'Sul', 'FEPAM', 'Ruim', 'Alta');
INSERT INTO T_GS_QUALIDADE_AR_AGUA_CIDADE (id_cidade, cidade, regiao, entidade, qualidade_do_ar, poluicao_agua) VALUES ('CID005', 'Curitiba', 'Sul', 'IAP', 'Boa', 'Baixa');

-- Select da tabela T_GS_CONTATO
SELECT * FROM T_GS_CONTATO;

-- Select da tabela T_GS_ENDERECO
SELECT * FROM T_GS_ENDERECO;

-- Select da tabela T_GS_ONG
SELECT * FROM T_GS_ONG;

-- Select da tabela T_GS_PRAIAS
SELECT * FROM T_GS_PRAIAS;

-- Select da tabela T_GS_Plastico_Produzido
SELECT * FROM T_GS_Plastico_Produzido;

-- Select da tabela T_GS_QUALIDADE_AR_AGUA_CIDADE
SELECT * FROM T_GS_QUALIDADE_AR_AGUA_CIDADE;

DELETE FROM T_GS_ONG ;

-- Drop Table de Contato
DROP TABLE T_GS_CONTATO;

-- Drop Table de Endereço
DROP TABLE T_GS_ENDERECO;

-- Drop Table de ONG
DROP TABLE T_GS_ONG;

-- Drop Table de Praias
DROP TABLE T_GS_PRAIAS;

-- Drop Table de Plástico Produzido
DROP TABLE T_GS_Plastico_Produzido;

-- Drop Table de Qualidade do Ar e Água das Cidades
DROP TABLE T_GS_QUALIDADE_AR_AGUA_CIDADE;
-- Tabela de Contato
CREATE TABLE T_GS_CONTATO (
    idContato VARCHAR2(50) PRIMARY KEY,
    email VARCHAR2(100) NOT NULL,
    telefone VARCHAR2(20) NOT NULL
);

-- Tabela de Endereço
CREATE TABLE T_GS_ENDERECO (
    idEndereco VARCHAR2(50) PRIMARY KEY,
    cep VARCHAR2(10) NOT NULL,
    lougradouro VARCHAR2(100) NOT NULL,
    complemento VARCHAR2(50),
    bairro VARCHAR2(50) NOT NULL,
    estado VARCHAR2(50) NOT NULL
);

-- Tabela de ONG
CREATE TABLE T_GS_ONG (
    idOng VARCHAR2(50) PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    pais VARCHAR2(50) NOT NULL,
    estado VARCHAR2(50) NOT NULL,
    areaAtuacao VARCHAR2(200) NOT NULL,
    materialColetado INT NOT NULL,
    imagem VARCHAR2(50) NOT NULL
);


-- TABELA AUXILIAR DE CONTATO DAS ONGS

CREATE TABLE T_GS_CONTATO_ONG (
    idContatoOng INT PRIMARY KEY,
    idOng VARCHAR2(50),
    idContato VARCHAR2(50),
    FOREIGN KEY (idOng) REFERENCES T_GS_ONG(idOng),
    FOREIGN KEY (idContato) REFERENCES T_GS_CONTATO(idContato)
);


-- TABELA AUXILIAR DE ENDERECO DAS ONGS
CREATE TABLE T_GS_ENDERECO_ONG (
    idEnderecoOng INT PRIMARY KEY,
    idOng VARCHAR2(50),
    idEndereco VARCHAR2(50),
    FOREIGN KEY (idOng) REFERENCES T_GS_ONG(idOng),
    FOREIGN KEY (idEndereco) REFERENCES T_GS_ENDERECO(idEndereco)
);


-- CRIANDO AS SEQUENCES

-- Sequência para Tabela de Contato
CREATE SEQUENCE SEQ_T_GS_CONTATO
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Sequência para Tabela de Endereço
CREATE SEQUENCE SEQ_T_GS_ENDERECO
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Sequência para Tabela de ONG
CREATE SEQUENCE SEQ_T_GS_ONG
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Sequência para Tabela Auxiliar de Contato das ONGs
CREATE SEQUENCE SEQ_T_GS_CONTATO_ONG
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Sequência para Tabela Auxiliar de Endereço das ONGs
CREATE SEQUENCE SEQ_T_GS_ENDERECO_ONG
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;






-- Tabela de Praias
CREATE TABLE T_GS_PRAIAS (
    Id_praia VARCHAR2(50) PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    pais VARCHAR2(50) NOT NULL,
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



-- Inserir dados na tabela T_GS_ONG

INSERT INTO T_GS_ONG (idOng, nome, pais, estado, areaAtuacao, materialColetado, imagem)VALUES ('1', 'Ocean Conservancy', 'Estados Unidos', 'Washington', 'Conservação dos Oceanos', 100, 'oceano_conservancy.png');
INSERT INTO T_GS_ONG (idOng, nome, pais, estado, areaAtuacao, materialColetado, imagem)VALUES ('2', 'Surfrider Foundation', 'Estados Unidos', 'California', 'Preservação das Praias', 80, 'surfrider_foundation.png');
INSERT INTO T_GS_ONG (idOng, nome, pais, estado, areaAtuacao, materialColetado, imagem)VALUES ('3', 'The Ocean Cleanup', 'Países Baixos', 'Holanda do Sul', 'Limpeza dos Oceanos', 150, 'ocean_cleanup.png');
INSERT INTO T_GS_ONG (idOng, nome, pais, estado, areaAtuacao, materialColetado, imagem)VALUES ('4', '5 Gyres', 'Estados Unidos', 'California', 'Redução da Poluição Plástica', 70, '5_gyres.png');
INSERT INTO T_GS_ONG (idOng, nome, pais, estado, areaAtuacao, materialColetado, imagem)VALUES ('5', 'Plastic Pollution Coalition', 'Estados Unidos', 'California', 'Combate à Poluição Plástica', 90, 'plastic_pollution_coalition.png');
INSERT INTO T_GS_ONG (idOng, nome, pais, estado, areaAtuacao, materialColetado, imagem)VALUES ('6', 'Instituto Ecosurf', 'Brasil', 'Rio de Janeiro', 'Preservação das Praias', 50, 'ecosurf.png');
INSERT INTO T_GS_ONG (idOng, nome, pais, estado, areaAtuacao, materialColetado, imagem)VALUES ('7', 'Instituto Mar Adentro', 'Brasil', 'Rio de Janeiro', 'Proteção Ambiental Marinha', 40, 'mar_adentro.png');
INSERT INTO T_GS_ONG (idOng, nome, pais, estado, areaAtuacao, materialColetado, imagem)VALUES ('8', 'Instituto Oceanográfico da USP', 'Brasil', 'São Paulo', 'Pesquisa Oceanográfica', 60, 'iousp.png');
INSERT INTO T_GS_ONG (idOng, nome, pais, estado, areaAtuacao, materialColetado, imagem)VALUES ('9', 'Projeto Tamar', 'Brasil', 'Bahia', 'Conservação de Tartarugas Marinhas', 70, 'tamar.png');
INSERT INTO T_GS_ONG (idOng, nome, pais, estado, areaAtuacao, materialColetado, imagem)VALUES ('10', 'Instituto Coral Vivo', 'Brasil', 'Bahia', 'Conservação de Recifes de Coral', 55, 'coral_vivo.png');



-- Inserir dados na tabela T_GS_ENDERECO

INSERT INTO T_GS_ENDERECO (idEndereco, cep, lougradouro, complemento, bairro, estado)VALUES ('1', '20001-2070', '1300 19th Street NW', 'Casa', 'Dupont Circle', 'Washington');
INSERT INTO T_GS_ENDERECO (idEndereco, cep, lougradouro, complemento, bairro, estado)VALUES ('2', '92024', '942 S. Coast Highway 101', 'Casa', 'Encinitas', 'California');
INSERT INTO T_GS_ENDERECO (idEndereco, cep, lougradouro, complemento, bairro, estado)VALUES ('3', '3011 ND', 'Conradstraat 38', 'Casa', 'Rotterdam', 'Holanda do Sul');
INSERT INTO T_GS_ENDERECO (idEndereco, cep, lougradouro, complemento, bairro, estado)VALUES ('4', '90404', '1314 7th Street', 'Suite 290', 'Santa Monica', 'California');
INSERT INTO T_GS_ENDERECO (idEndereco, cep, lougradouro, complemento, bairro, estado)VALUES ('5', '90401', '502 Colorado Avenue', 'Suite 303', 'Santa Monica', 'California');
INSERT INTO T_GS_ENDERECO (idEndereco, cep, lougradouro, complemento, bairro, estado)VALUES ('6', '22020-040', 'Rua Dr. Rubens Gomes Bueno, 6 - Urca', 'Casa', 'Rio de Janeiro', 'Rio de Janeiro');
INSERT INTO T_GS_ENDERECO (idEndereco, cep, lougradouro, complemento, bairro, estado)VALUES ('7', '22410-005', 'Av. Borges de Medeiros, 1426 - Lagoa', 'Casa', 'Rio de Janeiro', 'Rio de Janeiro');
INSERT INTO T_GS_ENDERECO (idEndereco, cep, lougradouro, complemento, bairro, estado)VALUES ('8', '05508-120', 'Praça do Oceanográfico, 191', 'Casa', 'Butantã', 'São Paulo');
INSERT INTO T_GS_ENDERECO (idEndereco, cep, lougradouro, complemento, bairro, estado)VALUES ('9', '45931-000', 'Praça Dr. Odilon Junqueira, 259', 'Casa', 'Praia do Forte', 'Bahia');
INSERT INTO T_GS_ENDERECO (idEndereco, cep, lougradouro, complemento, bairro, estado)VALUES ('10', '45931-000', 'Av. Antônio Tupy Pinheiro', 'S/N', 'Praia do Forte', 'Bahia');


-- inserir dados na tabela T_GS_CONTATO
INSERT INTO T_GS_CONTATO (idContato, email, telefone)VALUES ('1', 'info@oceanconservancy.org', '+1 (800) 519-1541');
INSERT INTO T_GS_CONTATO (idContato, email, telefone)VALUES ('2', 'contact@surfrider.org', '+1 (800) 743-SURF');
INSERT INTO T_GS_CONTATO (idContato, email, telefone)VALUES ('3', 'info@theoceancleanup.com', '+31 85 888 4888');
INSERT INTO T_GS_CONTATO (idContato, email, telefone)VALUES ('4', 'info@5gyres.org', '+1 (323) 786-2840');
INSERT INTO T_GS_CONTATO (idContato, email, telefone)VALUES ('5', 'info@plasticpollutioncoalition.org', '+1 (415) 538-0150');
INSERT INTO T_GS_CONTATO (idContato, email, telefone)VALUES ('6', 'contato@ecosurf.com.br', '(21) 98765-4321');
INSERT INTO T_GS_CONTATO (idContato, email, telefone)VALUES ('7', 'contato@maradentro.org.br', '(21) 98765-4321');
INSERT INTO T_GS_CONTATO (idContato, email, telefone)VALUES ('8', 'contato@iousp.br', '(11) 98765-4321');
INSERT INTO T_GS_CONTATO (idContato, email, telefone)VALUES ('9', 'contato@tamar.org.br', '(71) 98765-4321');
INSERT INTO T_GS_CONTATO (idContato, email, telefone)VALUES ('10', 'contato@coralvivo.org.br', '(71) 98765-4321');



-- Inserir dados na tabela T_GS_PRAIAS
-- Praias Brasileiras
INSERT INTO T_GS_PRAIAS (Id_praia, nome, pais, st_banho)VALUES ('1', 'Praia do Diabo', 'Brasil', 'Poucas Áreas de Banho');
INSERT INTO T_GS_PRAIAS (Id_praia, nome, pais, st_banho)VALUES ('2', 'Praia da Macumba', 'Brasil', 'Poucas Áreas de Banho');
INSERT INTO T_GS_PRAIAS (Id_praia, nome, pais, st_banho)VALUES ('3', 'Praia do Leme', 'Brasil', 'Poucas Áreas de Banho');
INSERT INTO T_GS_PRAIAS (Id_praia, nome, pais, st_banho)VALUES ('4', 'Praia de Ipanema', 'Brasil', 'Poucas Áreas de Banho');
INSERT INTO T_GS_PRAIAS (Id_praia, nome, pais, st_banho)VALUES ('5', 'Praia de Copacabana', 'Brasil', 'Imprópria para Banho');
INSERT INTO T_GS_PRAIAS (Id_praia, nome, pais, st_banho)VALUES ('6', 'Venice Beach', 'Estados Unidos', 'Poucas Áreas de Banho');
INSERT INTO T_GS_PRAIAS (Id_praia, nome, pais, st_banho)VALUES ('7', 'Santa Monica Beach', 'Estados Unidos', 'Imprópria para Banho');
INSERT INTO T_GS_PRAIAS (Id_praia, nome, pais, st_banho)VALUES ('8', 'Waikiki Beach', 'Estados Unidos', 'Poucas Áreas de Banho');
INSERT INTO T_GS_PRAIAS (Id_praia, nome, pais, st_banho)VALUES ('9', 'Bondi Beach', 'Austrália', 'Boa');
INSERT INTO T_GS_PRAIAS (Id_praia, nome, pais, st_banho)VALUES ('10', 'Manly Beach', 'Austrália', 'Boa');




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
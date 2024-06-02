-- Tabela de Contato
CREATE TABLE T_GS_CONTATO (
    idContato VARCHAR2(50) PRIMARY KEY,
    nome VARCHAR2(100),
    email VARCHAR2(100),
    telefone VARCHAR2(20),
    idEndereco VARCHAR2(50),
    idOng VARCHAR2(50),
    FOREIGN KEY (idEndereco) REFERENCES T_GS_ENDERECO(idEndereco),
    FOREIGN KEY (idOng) REFERENCES T_GS_ONG(idOng)
);

-- Tabela de Endere�o
CREATE TABLE T_GS_ENDERECO (
    idEndereco VARCHAR2(50) PRIMARY KEY,
    cep VARCHAR2(10),
    lougradouro VARCHAR2(100),
    complemento VARCHAR2(50),
    bairro VARCHAR2(50),
    localidade VARCHAR2(50),
    uf VARCHAR2(2)
);

-- Tabela de ONG
CREATE TABLE T_GS_ONG (
    idOng VARCHAR2(50) PRIMARY KEY,
    nome VARCHAR2(100),
    pais VARCHAR2(50),
    estado  VARCHAR2(50),
    areaAtuacao VARCHAR2(100)
);

-- Criar a sequ�ncia
CREATE SEQUENCE seq_idOng
START WITH 1
INCREMENT BY 1
NOCACHE;

-- Criar o gatilho
CREATE OR REPLACE TRIGGER trg_idOng
BEFORE INSERT ON T_GS_ONG
FOR EACH ROW
BEGIN
  :NEW.idOng := 'ONG' || TO_CHAR(seq_idOng.NEXTVAL, 'FM00000');
END;


INSERT INTO T_GS_ONG ( nome, pais, estado, areaAtuacao)
VALUES ('Projeto Tamar', 'Brasil', 'Bahia', 'Conserva��o das tartarugas marinhas');

INSERT INTO T_GS_ONG ( nome, pais, estado, areaAtuacao)
VALUES ('Instituto Baleia Jubarte', 'Brasil', 'Esp�rito Santo', 'Conserva��o das baleias jubarte e educa��o ambiental');

INSERT INTO T_GS_ONG ( nome, pais, estado, areaAtuacao)
VALUES ('Instituto de Pesquisa e Conserva��o de Golfinhos', 'Brasil', 'Pernambuco', 'Conserva��o de golfinhos e pesquisa cient�fica');

INSERT INTO T_GS_ONG ( nome, pais, estado, areaAtuacao)
VALUES ('Instituto Araguaia', 'Brasil', 'Tocantins', 'Conserva��o da biodiversidade aqu�tica e educa��o ambiental');

INSERT INTO T_GS_ONG ( nome, pais, estado, areaAtuacao)
VALUES ('Associa��o MarBrasil', 'Brasil', 'Paran�', 'Conserva��o marinha, prote��o de �reas costeiras e educa��o ambiental');

INSERT INTO T_GS_ONG ( nome, pais, estado, areaAtuacao)
VALUES ('Instituto Meros do Brasil', 'Brasil', 'Bahia', 'Conserva��o das tartarugas marinhas');

INSERT INTO T_GS_ONG ( nome, pais, estado, areaAtuacao)
VALUES ('Instituto Meros do Brasil', 'Brasil', 'Rio de Janeiro', 'Conserva��o dos meros (peixes grandes), pesquisa cient�fica e educa��o ambiental
');

INSERT INTO T_GS_ONG ( nome, pais, estado, areaAtuacao)
VALUES ('Instituto Recifes Costeiros(IRCOS)', 'Brasil', 'Pernambuco', 'Conserva��o de recifes costeiros e biodiversidade marinha');

INSERT INTO T_GS_ONG ( nome, pais, estado, areaAtuacao)
VALUES ('Instituto Biota de Conserva��o', 'Brasil', 'Alagoas', 'Conserva��o marinha, resgate de fauna marinha e pesquisa cient�fica');

INSERT INTO T_GS_ONG ( nome, pais, estado, areaAtuacao)
VALUES ('Instituto Argonauta para Conserva��o Costeira e Marinha', 'Brasil', 'S�o Paulo', 'Conserva��o marinha, resgate de animais marinhos e educa��o ambiental');

INSERT INTO T_GS_ONG ( nome, pais, estado, areaAtuacao)
VALUES ('Instituto EcoFaxina', 'Brasil', 'S�o Paulo', ' Limpeza de praias e rios, conscientiza��o ambiental e reciclagem');

-- Tabela de Praias
CREATE TABLE T_GS_PRAIAS (
    Id_praia VARCHAR2(50) PRIMARY KEY,
    nome VARCHAR2(100),
    pais VARCHAR2(50),
    estado VARCHAR2(50),
    st_banho VARCHAR2(50)
);

-- Tabela de Pl�stico Produzido
CREATE TABLE T_GS_Plastico_Produzido (
    id_ano VARCHAR2(50) PRIMARY KEY,
    ano NUMBER,
    producao_anual NUMBER
);

-- Tabela de Qualidade do Ar e �gua das Cidades
CREATE TABLE T_GS_QUALIDADE_AR_AGUA_CIDADE (
    id_cidade VARCHAR2(50) PRIMARY KEY,
    cidade VARCHAR2(100),
    regiao VARCHAR2(50),
    entidade VARCHAR2(100),
    qualidade_do_ar VARCHAR2(50),
    poluicao_agua VARCHAR2(50)
);

-- Remover uma ONG espec�fica
DELETE FROM T_GS_ONG WHERE idOng = 'ONG00008';

-- Remover tabelas
DROP TABLE T_GS_CONTATO;
DROP TABLE T_GS_ENDERECO;
DROP TABLE T_GS_ONG;
DROP TABLE T_GS_PRAIAS;
DROP TABLE T_GS_Plastico_Produzido;
DROP TABLE T_GS_QUALIDADE_AR_AGUA_CIDADE;

-- Consultar todas as ONGs
SELECT * FROM T_GS_ONG;

-- Consultar todos os contatos
SELECT * FROM T_GS_CONTATO;

-- Consultar todos os endere�os
SELECT * FROM T_GS_ENDERECO;

-- Consultar todas as praias
SELECT * FROM T_GS_PRAIAS;

-- Consultar produ��o de pl�stico
SELECT * FROM T_GS_Plastico_Produzido;

-- Consultar qualidade do ar e �gua das cidades
SELECT * FROM T_GS_QUALIDADE_AR_AGUA_CIDADE;


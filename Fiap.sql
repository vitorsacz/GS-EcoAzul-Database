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

-- Tabela de Endereço
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

-- Criar a sequência
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
VALUES ('Projeto Tamar', 'Brasil', 'Bahia', 'Conservação das tartarugas marinhas');

INSERT INTO T_GS_ONG ( nome, pais, estado, areaAtuacao)
VALUES ('Instituto Baleia Jubarte', 'Brasil', 'Espírito Santo', 'Conservação das baleias jubarte e educação ambiental');

INSERT INTO T_GS_ONG ( nome, pais, estado, areaAtuacao)
VALUES ('Instituto de Pesquisa e Conservação de Golfinhos', 'Brasil', 'Pernambuco', 'Conservação de golfinhos e pesquisa científica');

INSERT INTO T_GS_ONG ( nome, pais, estado, areaAtuacao)
VALUES ('Instituto Araguaia', 'Brasil', 'Tocantins', 'Conservação da biodiversidade aquática e educação ambiental');

INSERT INTO T_GS_ONG ( nome, pais, estado, areaAtuacao)
VALUES ('Associação MarBrasil', 'Brasil', 'Paraná', 'Conservação marinha, proteção de áreas costeiras e educação ambiental');

INSERT INTO T_GS_ONG ( nome, pais, estado, areaAtuacao)
VALUES ('Instituto Meros do Brasil', 'Brasil', 'Bahia', 'Conservação das tartarugas marinhas');

INSERT INTO T_GS_ONG ( nome, pais, estado, areaAtuacao)
VALUES ('Instituto Meros do Brasil', 'Brasil', 'Rio de Janeiro', 'Conservação dos meros (peixes grandes), pesquisa científica e educação ambiental
');

INSERT INTO T_GS_ONG ( nome, pais, estado, areaAtuacao)
VALUES ('Instituto Recifes Costeiros(IRCOS)', 'Brasil', 'Pernambuco', 'Conservação de recifes costeiros e biodiversidade marinha');

INSERT INTO T_GS_ONG ( nome, pais, estado, areaAtuacao)
VALUES ('Instituto Biota de Conservação', 'Brasil', 'Alagoas', 'Conservação marinha, resgate de fauna marinha e pesquisa científica');

INSERT INTO T_GS_ONG ( nome, pais, estado, areaAtuacao)
VALUES ('Instituto Argonauta para Conservação Costeira e Marinha', 'Brasil', 'São Paulo', 'Conservação marinha, resgate de animais marinhos e educação ambiental');

INSERT INTO T_GS_ONG ( nome, pais, estado, areaAtuacao)
VALUES ('Instituto EcoFaxina', 'Brasil', 'São Paulo', ' Limpeza de praias e rios, conscientização ambiental e reciclagem');

-- Tabela de Praias
CREATE TABLE T_GS_PRAIAS (
    Id_praia VARCHAR2(50) PRIMARY KEY,
    nome VARCHAR2(100),
    pais VARCHAR2(50),
    estado VARCHAR2(50),
    st_banho VARCHAR2(50)
);

-- Tabela de Plástico Produzido
CREATE TABLE T_GS_Plastico_Produzido (
    id_ano VARCHAR2(50) PRIMARY KEY,
    ano NUMBER,
    producao_anual NUMBER
);

-- Tabela de Qualidade do Ar e Água das Cidades
CREATE TABLE T_GS_QUALIDADE_AR_AGUA_CIDADE (
    id_cidade VARCHAR2(50) PRIMARY KEY,
    cidade VARCHAR2(100),
    regiao VARCHAR2(50),
    entidade VARCHAR2(100),
    qualidade_do_ar VARCHAR2(50),
    poluicao_agua VARCHAR2(50)
);

-- Remover uma ONG específica
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

-- Consultar todos os endereços
SELECT * FROM T_GS_ENDERECO;

-- Consultar todas as praias
SELECT * FROM T_GS_PRAIAS;

-- Consultar produção de plástico
SELECT * FROM T_GS_Plastico_Produzido;

-- Consultar qualidade do ar e água das cidades
SELECT * FROM T_GS_QUALIDADE_AR_AGUA_CIDADE;


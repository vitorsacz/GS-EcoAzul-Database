--====================================================================;
-- CREATE TABLES
--====================================================================;

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


CREATE TABLE T_GS_ENDERECO (
    idEndereco VARCHAR2(50) PRIMARY KEY,
    cep VARCHAR2(10),
    lougradouro VARCHAR2(100)
);

CREATE TABLE T_GS_ONG (
    idOng VARCHAR2(50) PRIMARY KEY,
    nome VARCHAR2(100),
    areaAtuacao VARCHAR2(100)
);






--====================================================================;
-- DROP TABLES
--====================================================================;

DROP TABLE T_GS_CONTATO;
DROP TABLE T_GS_ENDERECO ;
DROP TABLE T_GS_ONG;







--====================================================================;
-- SELECT E RELATÓRIOS
--====================================================================;
SELECT * FROM T_GS_CONTATO;

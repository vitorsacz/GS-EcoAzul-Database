-- CONSULTAS NO BANCO

-- Traz o nome das ONGS, organizados pelo material coletado, de forma crescente
SELECT nome, materialcoletado
FROM T_GS_ONG
ORDER BY materialColetado ASC;


-- Este relat�rio apresentar� os nomes das ONGs em ordem alfab�tica.
SELECT nome
FROM T_GS_ONG
ORDER BY nome ASC;

-- Relat�rio de ONGs classificadas em ordem crescente pelo material coletado
SELECT nome, pais, estado, materialColetado
FROM T_GS_ONG
ORDER BY materialColetado ASC;

-- Relat�rio de praias em pa�ses espec�ficos cujo nome contenha a palavra "Beach" e a condi��o de banho � "Poucas �reas de Banho" ou "Impr�pria para Banho"
SELECT nome, pais, st_banho
FROM T_GS_PRAIAS
WHERE pais IN ('Brasil', 'Estados Unidos')
  AND nome LIKE '%Beach%'
  AND st_banho IN ('Poucas �reas de Banho', 'Impr�pria para Banho');
  
  
-- Relat�rio de praias com boas �reas de banho
SELECT nome, pais, st_banho
FROM T_GS_PRAIAS
WHERE st_banho = 'Boa';

-- Relat�rio de ONGs com o nome convertido para mai�sculas
SELECT UPPER(nome) AS nome_maiusculo, pais, estado, materialColetado
FROM T_GS_ONG;


-- Relat�rio de quantidade de ONGs por pa�s
SELECT pais, COUNT(idOng) AS total_ongs
FROM T_GS_ONG
GROUP BY pais;

-- Relat�rio de ONGs e seus contatos
SELECT o.nome, o.pais, c.email, c.telefone
FROM T_GS_ONG o
JOIN T_GS_CONTATO_ONG co ON o.idOng = co.idOng
JOIN T_GS_CONTATO c ON co.idContato = c.idContato;


-- Relat�rio de ONGs sem endere�o registrado
SELECT o.nome, o.pais
FROM T_GS_ONG o
LEFT JOIN T_GS_ENDERECO_ONG eo ON o.idOng = eo.idOng
WHERE eo.idOng IS NULL;







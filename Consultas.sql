-- CONSULTAS NO BANCO

-- Traz o nome das ONGS, organizados pelo material coletado, de forma crescente
SELECT nome, materialcoletado
FROM T_GS_ONG
ORDER BY materialColetado ASC;


-- Este relatório apresentará os nomes das ONGs em ordem alfabética.
SELECT nome
FROM T_GS_ONG
ORDER BY nome ASC;

-- Relatório de ONGs classificadas em ordem crescente pelo material coletado
SELECT nome, pais, estado, materialColetado
FROM T_GS_ONG
ORDER BY materialColetado ASC;

-- Relatório de praias em países específicos cujo nome contenha a palavra "Beach" e a condição de banho é "Poucas Áreas de Banho" ou "Imprópria para Banho"
SELECT nome, pais, st_banho
FROM T_GS_PRAIAS
WHERE pais IN ('Brasil', 'Estados Unidos')
  AND nome LIKE '%Beach%'
  AND st_banho IN ('Poucas Áreas de Banho', 'Imprópria para Banho');
  
  
-- Relatório de praias com boas áreas de banho
SELECT nome, pais, st_banho
FROM T_GS_PRAIAS
WHERE st_banho = 'Boa';

-- Relatório de ONGs com o nome convertido para maiúsculas
SELECT UPPER(nome) AS nome_maiusculo, pais, estado, materialColetado
FROM T_GS_ONG;


-- Relatório de quantidade de ONGs por país
SELECT pais, COUNT(idOng) AS total_ongs
FROM T_GS_ONG
GROUP BY pais;

-- Relatório de ONGs e seus contatos
SELECT o.nome, o.pais, c.email, c.telefone
FROM T_GS_ONG o
JOIN T_GS_CONTATO_ONG co ON o.idOng = co.idOng
JOIN T_GS_CONTATO c ON co.idContato = c.idContato;


-- Relatório de ONGs sem endereço registrado
SELECT o.nome, o.pais
FROM T_GS_ONG o
LEFT JOIN T_GS_ENDERECO_ONG eo ON o.idOng = eo.idOng
WHERE eo.idOng IS NULL;







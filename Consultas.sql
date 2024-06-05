-- CONSULTAS NO BANCO

-- Traz o nome das ONGS, organizados pelo material coletado, de forma crescente
SELECT nome, materialcoletado
FROM T_GS_ONG
ORDER BY materialColetado ASC;


-- Este relatório apresentará os nomes das ONGs em ordem alfabética.
SELECT nome
FROM T_GS_ONG
ORDER BY nome ASC;

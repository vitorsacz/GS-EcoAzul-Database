-- CONSULTAS NO BANCO

-- Traz o nome das ONGS, organizados pelo material coletado, de forma crescente
SELECT nome, materialcoletado
FROM T_GS_ONG
ORDER BY materialColetado ASC;


-- Este relat�rio apresentar� os nomes das ONGs em ordem alfab�tica.
SELECT nome
FROM T_GS_ONG
ORDER BY nome ASC;

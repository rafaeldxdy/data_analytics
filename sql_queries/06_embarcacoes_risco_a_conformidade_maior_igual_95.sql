# Quais embarcações têm classificação de risco A e índice de conformidade maior ou igual a 95%?

USE cap02;

SELECT *
FROM cap02.tb_navios
WHERE classificacao_risco = 'A'
	AND indice_conformidade >= 95
ORDER BY nome_navio;

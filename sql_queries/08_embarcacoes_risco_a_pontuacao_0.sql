# Quais embarcações têm classificação de risco A ou pontuação de risco igual a 0?

USE cap02;

SELECT *
FROM tb_navios
WHERE classificacao_risco = 'A'
OR pontuacao_risco = 0
ORDER BY nome_navio;
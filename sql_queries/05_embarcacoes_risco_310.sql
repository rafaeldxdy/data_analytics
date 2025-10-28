# Quais embarcações possuem pontuação de risco igual a 310? 
# A query abaixo exibe quais embarcações possuem pontuação de risco igual a 310 (em condições sanitárias aceitáveis).

USE cap02;

SELECT *
FROM cap02.tb_navios
WHERE pontuacao_risco = 310
ORDER BY nome_navio;

# Quais embarcações foram inspecionadas em Dezembro de 2016?

USE cap02;

SELECT *
FROM tb_navios
WHERE mes_ano = '12/2016'
ORDER BY nome_navio;
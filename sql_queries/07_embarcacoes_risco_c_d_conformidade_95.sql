# Quais embarcações têm classificação de risco C ou D e índice de conformidade menor ou igual a 95%?

USE cap02;

SELECT *
FROM tb_navios
WHERE classificacao_risco IN ('C', 'D')
AND indice_conformidade <= 95
ORDER BY nome_navio;
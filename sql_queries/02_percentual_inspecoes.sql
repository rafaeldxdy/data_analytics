# Qual é a porcentagem de inspeções que se enquadram em cada categoria de risco (A, B, C, D)?
# A query abaixo exibe o percentual total de cada classificação de risco, bem como seu total de inspeções.

SELECT 
	classificacao_risco,
    COUNT(*) AS total_inspecoes,
    ROUND((COUNT(*) / (SELECT COUNT(*) FROM tb_navios)) * 100, 2) AS percentual_total
FROM tb_navios
GROUP BY classificacao_risco
ORDER BY classificacao_risco;

# Quais navios foram classificados como C ou D (risco aceitável ou insatisfatório) mais de uma vez?
# A query abaixo exibe as embarcações classificados como risco aceitável ou insatisfatório, mais de uma vez.

SELECT nome_navio,
       classificacao_risco,
	   COUNT(nome_navio) AS quantidade_ocorrencias
FROM tb_navios
WHERE classificacao_risco IN ('C', 'D')
GROUP BY nome_navio, classificacao_risco
HAVING COUNT(nome_navio) > 1
ORDER BY nome_navio;

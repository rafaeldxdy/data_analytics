# Quais navios tiveram o melhor e o pior desempenho médio ao longo de todas as suas inspeções?
# A query abaixo lista as embarcações por ordem de maior média de conformidade (maior é melhor).

USE cap02;

SELECT nome_navio,
       COUNT(*) AS total_inspecoes,
       ROUND(AVG(indice_conformidade), 2) AS media_conformidade,
       ROUND(AVG(pontuacao_risco), 2) AS media_pontuacao_risco,
       MIN(pontuacao_risco) AS melhor_pontuacao,
       MAX(pontuacao_risco) AS pior_pontuacao
FROM tb_navios
GROUP BY nome_navio
ORDER BY media_conformidade DESC;
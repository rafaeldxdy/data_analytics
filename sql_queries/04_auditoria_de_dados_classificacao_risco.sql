# Auditoria de Dados: Existem inspeções onde a CLASSIFICACAO_RISCO (A, B, C, D) não corresponde à PONTUACAO_RISCO, com base nas regras do dicionário de dados?
# A proposta desta query é testar se há algum registro com classificação de risco inesperada dentro das faixas propostas.
# O resultado esperado é de que não haja retorno de registros, concluindo assim que todos os registros da base de dados estão em conformidade neste aspecto.

SELECT *
FROM tb_navios
WHERE classificacao_risco <> 'A' AND pontuacao_risco <= 150
	OR classificacao_risco <> 'B' AND pontuacao_risco BETWEEN 151 AND 300
    OR classificacao_risco <> 'C' AND pontuacao_risco BETWEEN 301 AND 450
	OR classificacao_risco <> 'D' AND pontuacao_risco > 450;

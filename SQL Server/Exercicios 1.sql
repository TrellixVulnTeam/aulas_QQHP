SELECT TOP 100 * INTO #TB_ENDERECO FROM [TB_ENDERECO]
SELECT TOP 100 * INTO #TB_CLIENTE  FROM [TB_CLIENTE]
SELECT TOP 100 * INTO #TB_TELEFONE FROM [TB_TELEFONE]
SELECT TOP 100 * INTO #TB_DADOSCLI FROM [TB_DADOSCLI]

SELECT * FROM #TB_CLIENTE
SELECT * FROM #TB_ENDERECO
SELECT * FROM #TB_TELEFONE
SELECT * FROM #TB_DADOSCLI

--COUNT - CONTADOR DE REGISTROS.
--	CONTA QUANTOS REGISTROS QUE COME�AM COM A LETRA "M" TEM NA TABELA <#TB_DADOSCLI>
SELECT COUNT(*) AS CONTADOR
FROM #TB_DADOSCLI
WHERE DDS_NOME LIKE 'M%'

--	CONTA QUANTOS REGISTROS TEM NA TABELA #TB_DADOSCLI
SELECT COUNT(*) FROM #TB_DADOSCLI

--	CONTA QUANTOS REGISTROS TEM NA TABELA ACIMA DO CLICODIGO 10635
SELECT COUNT(*) AS CONTADOR 
FROM #TB_DADOSCLI
WHERE DDS_CLICODIGO > 10635

--M�DIA
--	CACULANDO A M�DIA DOS CODIGO E O M�XIMO E M�NIMO DOS C�DIGO.
SELECT AVG(DDS_CLICODIGO) AS MEDIA_CODIGOS,
	   MAX(DDS_CLICODIGO) AS MAXIMO_CODIGOS,
	   MIN(DDS_CLICODIGO) AS MINIMO_CODIGOS
FROM #TB_DADOSCLI

--MULTIPLICAO
--	MULTIPLICANDO DADOS DENTRO DE UMA TABELA
SELECT DDS_CLICODIGO, DDS_NOME, DDS_CLICODIGO * 2 AS MULTIPLICAO
FROM #TB_DADOSCLI

--SOMA
-- SOMA OS CODIGOS DE TUAS TABELAS 
SELECT DDS_CLICODIGO + END_CLICODIGO AS SOMA_CODIGOS
FROM #TB_DADOSCLI INNER JOIN #TB_ENDERECO WITH (NOLOCK)
ON DDS_CLICODIGO = END_CLICODIGO

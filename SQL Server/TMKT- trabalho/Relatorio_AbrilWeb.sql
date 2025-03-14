--> Cliente: 2 - EDITORA ABRIL
--> 
--> Por favor, gerar as informa��es abaixo referente ao per�odo de 05/03 a 17/03  e 16/04 a 28/04 das a��es da Ed. Abril (recup, rebate, veja especial e contigo especial). 
--> 
--> - Nomes trabalhados
--> - Qde de liga��es (tentativas)
--> - Qde de tabula��es (al�)
--> - Qde de contatos efetivos
--> - Qde de vendas

SELECT TOP 10 * FROM TB_ASSOCIADOS
SELECT TOP 10 * FROM TB_CLIENTE
SELECT TOP 10 * FROM TB_OCORRENCIA
SELECT TOP 10 * FROM TB_CONTATO

STP_FIND_COLUMN 'OCOR'

--CONSULTANDO AS VENDAS REALIZADAS ENTRE ASA DATAS  05/03 a 17/03.
SELECT COUNT(*) AS QTDE, CONVERT(VARCHAR, ASS_DATAAUDITORIA, 103) AS DATA FROM TB_ASSOCIADOS
WHERE ASS_DATAAUDITORIA BETWEEN '2012-03-05' AND '2012-03-17 23:59:59'
GROUP BY CONVERT(VARCHAR, ASS_DATAAUDITORIA, 103)

--CONSULTANDO AS VENDAS REALIZADAS ENTRE AS DATAS 16/04 a 28/04. 
SELECT COUNT(*) AS QTDA, CONVERT(VARCHAR, ASS_DATAAUDITORIA, 103) AS DATA FROM TB_ASSOCIADOS
WHERE ASS_DATAAUDITORIA BETWEEN '2012-04-16' AND '2012-04-28 23:59:59'
GROUP BY CONVERT(VARCHAR, ASS_DATAAUDITORIA, 103)


--SELECIONANDO OS CONTATOS EFETIVOS, EFETUADOS NAS DATAS DO 05-03 AT� 17-03
SELECT COUNT(*)AS QTDE, CONVERT(VARCHAR, CLI_CTODATAHORA, 103) AS DATA 
FROM TB_CLIENTE INNER JOIN TB_OCORRENCIA WITH(NOLOCK) ON CLI_SUBGRUPO = OCR_SUBGRUPO AND CLI_OCORRENCIA = OCR_OCORRENCIA AND CLI_GRUPO = OCR_GRUPO
WHERE OCR_GRUPO = 1 AND CLI_CTODATAHORA BETWEEN '2012-03-05' AND '2012-03-17 23:59:59' 
GROUP BY CONVERT(VARCHAR, CLI_CTODATAHORA, 103)
ORDER BY CONVERT(VARCHAR, CLI_CTODATAHORA, 103) ASC

--SELECIONAR OS CONTATOS EFETIVOS, EFETUADOS NAS DATAS DO 16/04 AT�  28/04.
SELECT COUNT(*) AS QTDE, CONVERT(VARCHAR, CLI_CTODATAHORA, 103) AS DATA
FROM TB_CLIENTE INNER JOIN TB_OCORRENCIA WITH(NOLOCK) ON CLI_GRUPO = OCR_GRUPO AND CLI_SUBGRUPO = OCR_SUBGRUPO AND CLI_OCORRENCIA = OCR_OCORRENCIA
WHERE OCR_GRUPO = 1 AND CLI_CTODATAHORA BETWEEN '2012-04-16' AND '2012-04-28 23:59:59'
GROUP BY CONVERT(VARCHAR, CLI_CTODATAHORA, 103)
ORDER BY CONVERT(VARCHAR, CLI_CTODATAHORA, 103) ASC



--LISTAR E CONTAR TODOS OS CONTATOS E SUAS RESPECTIVA OCORR�NCIAS DA DATA 05-03 AT� 17-03
SELECT COUNT(*) AS QTDE, CONVERT(VARCHAR, CTO_DATAHORA, 103) AS DATA, OCR_DESCRICAO AS DESCRI��O
FROM TB_CONTATO INNER JOIN TB_OCORRENCIA WITH(NOLOCK) ON CTO_GRUPO = OCR_GRUPO AND CTO_SUBGRUPO = OCR_SUBGRUPO AND CTO_OCORRENCIA = OCR_OCORRENCIA
WHERE CTO_DATAHORA BETWEEN '2012-03-05' AND '2012-03-17 23:59:59'
GROUP BY CONVERT(VARCHAR, CTO_DATAHORA, 103), OCR_DESCRICAO
ORDER BY CONVERT(VARCHAR, CTO_DATAHORA, 103) ASC

--LISTAR E CONTAR TODOS OS CONTATOS E SUAS RESPECTIVA OCORR�NCIAS DA DATA 16/04 a 28/04 
SELECT COUNT(*) AS QTDE, CONVERT(VARCHAR, CTO_DATAHORA, 103) AS DATA, OCR_DESCRICAO AS DESCRIC�O
FROM TB_CONTATO INNER JOIN TB_OCORRENCIA WITH(NOLOCK) ON CTO_GRUPO = OCR_GRUPO AND CTO_SUBGRUPO = OCR_SUBGRUPO AND CTO_OCORRENCIA = OCR_OCORRENCIA
WHERE CTO_DATAHORA BETWEEN '2012-04-16' AND '2012-04-28 23:59:59'
GROUP BY CONVERT(VARCHAR, CTO_DATAHORA, 103), OCR_DESCRICAO
ORDER BY CONVERT(VARCHAR, CTO_DATAHORA, 103)


 Nomes trabalhados
--SELECIONANDO TODAS AS LIGA��ES REALIZADAS NA DATA 05-03 AT� 17-03
SELECT COUNT(*) AS QTDE, CONVERT(VARCHAR, CTO_DATAHORA, 103) AS DATA
FROM TB_CONTATO
WHERE CTO_DATAHORA BETWEEN '2012-03-05' AND '2012-03-17 23:59:59'
GROUP BY CONVERT(VARCHAR, CTO_DATAHORA, 103)
ORDER BY CONVERT(VARCHAR, CTO_DATAHORA, 103)

--SELECT TODAS AS LIGA��ES REALIZADAS NA DATA 16/04 a 28/04 
SELECT COUNT(*) AS QTDE, CONVERT(VARCHAR, CTO_DATAHORA, 103) AS DATA
FROM TB_CONTATO
WHERE CTO_DATAHORA BETWEEN '2012-04-16' AND '2012-04-28 23:59:59'
GROUP BY CONVERT(VARCHAR, CTO_DATAHORA, 103)
ORDER BY CONVERT(VARCHAR, CTO_DATAHORA, 103)




SELECT TOP 10 * FROM TB_OCORRENCIA
SELECT TOP 10 * FROM TB_OCORRENCIAGRUPO
SELECT TOP 10 * FROM TB_OCORRENCIASUBGRUPO 
SELECT TOP 10 * FROM TB_CLIENTE
SELECT TOP 100 * FROM TB_CONTATO


GROUP BY CONVERT(VARCHAR, CTO_DATAHORA, 103)

STP_FIND_COLUMN 'OCR'


DECLARE @SQL VARCHAR(8000) -- variavel que vai receber o comando sql
DECLARE @ARQUIVO VARCHAR(MAX) -- recebe o caminho do arquivo.
SET @ARQUIVO = '\\ip_da_maquina\c$\Documents and Settings\134744\Desktop\IMG_1.JPG'

DECLARE @NOME_FOTO VARCHAR(150)

SET @NOME_FOTO = 'FOTO_1'

SET @SQL = ''      
SET @SQL = @SQL + 'INSERT INTO TESTE_MOISES (CAD_APLICACAO,NOME,DATA,IMAGEM)'      
		SET @SQL = @SQL + 'SELECT  '' foto1 '',''JONATHAN'','+CONVERT(VARCHAR,GETDATE(),103)+ '''BULKCOLUMN FROM OPENROWSET( BULK ''' + @ARQUIVO +''', SINGLE_BLOB)'''

print(@SQL)

INSERT INTO TESTE_MOISES (CAD_APLICACAO,NOME,DATA,IMAGEM)
SELECT  ' foto1 ','JONATHAN',09/05/2012'BULKCOLUMN FROM OPENROWSET( BULK '\\ip_da_maquina\c$\Documents and Settings\134744\Desktop\IMG_1.JPG', SINGLE_BLOB)'

INSERT INTO SEGMERCADO(ID, DESCRICAO) VALUES(1, 'Varejo'); -- Adicionando informação a tabela de forma normal
SELECT * FROM SEGMERCADO; --Consultando as informações na tabela.
DELETE FROM SEGMERCADO; --Deletando as informações da tabela.

--Vamos adicionar informações a minha tabela ultilizando o PLSQL
DECLARE
  v_ID SEGMERCADO.ID%TYPE := 2;
  V_DESCRICAO SEGMERCADO.DESCRICAO%TYPE := 'Atacado';
BEGIN
   INSERT INTO SEGMERCADO(ID, DESCRICAO) VALUES (v_ID,  UPPER(v_DESCRICAO));
   COMMIT;
END;
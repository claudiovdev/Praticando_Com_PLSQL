INSERT INTO SEGMERCADO(ID, DESCRICAO) VALUES(1, 'Varejo'); -- Adicionando informação a tabela de forma normal
SELECT * FROM SEGMERCADO; --Consultando as informações na tabela.
DELETE FROM SEGMERCADO; --Deletando as informações da tabela.

--Vamos adicionar informações a minha tabela ultilizando o PLSQL
DECLARE
  v_ID NUMBER(5) := 1;
  V_DESCRICAO VARCHAR2(100) := 'Varejo';
BEGIN
   INSERT INTO SEGMERCADO(ID, DESCRICAO) VALUES (v_ID, v_DESCRICAO);
   COMMIT;
END;
--Realizando Update na tabela ultilizando o PLSQL
DECLARE
  v_ID SEGMERCADO.ID%TYPE := 1;
  V_DESCRICAO SEGMERCADO.DESCRICAO%TYPE := 'Varejistas';
BEGIN
   UPDATE SEGMERCADO SET DESCRICAO = UPPER(V_DESCRICAO) WHERE ID = v_ID;
   v_ID := 2;
   v_DESCRICAO := 'Atacadista';
   UPDATE SEGMERCADO SET DESCRICAO = UPPER(V_DESCRICAO) WHERE ID = v_ID;
   COMMIT;
END;

SELECT * FROM SEGMERCADO
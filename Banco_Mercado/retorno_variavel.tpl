
-- Criando função com parametro
CREATE OR REPLACE FUNCTION obter_descricao_segmercado
(p_ID IN SEGMERCADO.ID%TYPE)RETURN SEGMERCADO.DESCRICAO%TYPE
IS
  v_DESCRICAO SEGMERCADO.DESCRICAO%TYPE;
BEGIN
  SELECT DESCRICAO INTO v_DESCRICAO FROM SEGMERCADO WHERE ID = p_ID;
  RETURN v_DESCRICAO;
END;

-- Executando função criada
DECLARE
  v_DESCRICAO SEGMERCADO.DESCRICAO%TYPE;
BEGIN
  v_DESCRICAO := obter_descricao_segmercado(3);
  dbms_output.put_line('A descrição do segmento de mercado é ' || v_DESCRICAO);
END;
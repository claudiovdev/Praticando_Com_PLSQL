-- Realizando um for e alterando o segmento de mercado do cliente ultilizando uma procedure
DECLARE
  v_SEGMERCADO_ID CLIENTE.SEGMERCADO_ID%TYPE := 3;
BEGIN
  FOR v_ID IN 1..6 LOOP
    atualizar_cli_seg_mercado(p_ID => v_ID, p_SEGMERCADO_ID => v_SEGMERCADO_ID); -- Atualizando e ultilizando um parametro nomeado para poder ultilizar a procedure com os parametros na ordem que quiser,
  END LOOP;
END;

SELECT * FROM CLIENTE;
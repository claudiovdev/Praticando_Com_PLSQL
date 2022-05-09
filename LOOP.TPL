-- Consultando a tabela de cliente
SELECT * FROM CLIENTE;

-- Realizando um for para alterar um atributo da tabela de cliente usando uma procedure
DECLARE
  v_SEGMERCADO_ID CLIENTE.SEGMERCADO_ID%TYPE := 2;
  v_I NUMBER(3) := 1;
BEGIN
  LOOP
    atualizar_cli_seg_mercado(v_I, V_SEGMERCADO_ID);
    v_I := v_I + 1;
  EXIT WHEN
  V_I > 6;
  END LOOP;
 
END;

-- Consultando a tabela de cliente para ver as alterações geradas
SELECT * FROM CLIENTE;
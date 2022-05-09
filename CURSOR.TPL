-- Estrutura de um cursos recebendo ID e Razao social do cliente.
DECLARE
  CURSOR cur_CLIENTE IS 
  ;
  v_SEGMERCADO_ID CLIENTE.SEGMERCADO_ID%TYPE := 1;
  v_ID CLIENTE.ID%TYPE;
BEGIN
  OPEN cur_CLIENTE;
  LOOP
    FETCH cur_CLIENTE INTO v_ID;
  EXIT WHEN cur_CLIENTE%NOTFOUND; -- Significa saia da linha quando o cliente der notfound!!
  atualizar_cli_seg_mercado(p_ID => v_ID, p_SEGMERCADO_ID => v_SEGMERCADO_ID);
    
  END LOOP;  
  CLOSE cur_CLIENTE;
END;

-- Consultando as alterações
select * from cliente;


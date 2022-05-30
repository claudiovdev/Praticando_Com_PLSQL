-- Estrutura de um cursos recebendo ID e realizando um for para realizar as interações.
DECLARE
  CURSOR cur_CLIENTE IS SELECT ID FROM CLIENTE;
  v_SEGMERCADO_ID CLIENTE.SEGMERCADO_ID%TYPE := 1;
  
BEGIN
  FOR cli_rec in cur_CLIENTE LOOP
    atualizar_cli_seg_mercado(p_ID => cli_rec.ID, p_SEGMERCADO_ID => v_SEGMERCADO_ID);
  END LOOP;
END;

select * from cliente;


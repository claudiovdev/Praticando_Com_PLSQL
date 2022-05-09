-- Estrutura de um cursos recebendo ID e Razao social do cliente.
DECLARE
  CURSOR cur_CLIENTE IS SELECT ID, RAZAO_SOCIAL FROM CLIENTE;
  v_ID CLIENTE.ID%TYPE;
  v_RAZAO_SOCIAL CLIENTE.RAZAO_SOCIAL%TYPE;
BEGIN
  OPEN cur_CLIENTE;
  LOOP
    FETCH cur_CLIENTE INTO v_ID, v_RAZAO_SOCIAL;
  EXIT WHEN cur_CLIENTE%NOTFOUND; -- Significa saia da linha quando o cliente der notfound!!
    dbms_output.put_line('ID = ' || v_ID);
    dbms_output.put_line('RAZAO_SOCIAL = ' || v_RAZAO_SOCIAL);
  END LOOP;  
  CLOSE cur_CLIENTE;
END;


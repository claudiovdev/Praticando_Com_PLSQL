-- Executando primeiro programa basico PLSQL para entender a estrutura

DECLARE
  v_ID NUMBER(5) := 1; -- Definindo a variavel assim que declarada
  
BEGIN
  
  dbms_output.put_line(v_ID);
  
  v_ID := 10; -- Realizando alteração da variavel no corpo do programa.
  dbms_output.put_line(v_ID);
  
END;
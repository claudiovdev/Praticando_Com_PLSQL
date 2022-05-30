-- Criando procedure para formatar CNPJ

CREATE OR REPLACE PROCEDURE formata_cnpj
(p_CNPJ IN OUT CLIENTE.CNPJ%TYPE)
IS
BEGIN
  p_CNPJ := SUBSTR(p_CNPJ, 1,3) || '/' || SUBSTR(p_CNPJ, 4,5);
  
END;

-- Executando a procedure criada

DECLARE
  v_CNPJ CLIENTE.CNPJ%TYPE := '12345';
BEGIN
  formata_cnpj(v_CNPJ);
  dbms_output.put_line('Valor de entrada do cnpj: ' ||  v_CNPJ);
END;
-- Adicionando novos clientes.
DECLARE
BEGIN
  incluir_cliente(2, 'MERCEARIA XYZ', '89238', 1, 10000);
  incluir_cliente(3, 'FARMACIA QWE', '90000', 1, 10000);
  incluir_cliente(4, 'MERCADINHO JKL', '89236', 1, 10000);
  incluir_cliente(5, 'TAVERNA SDF', '89222', 1, 60000);
  incluir_cliente(6, 'BAR 222', '76000', 1, 20000);
END;

-- Consultando os clientes adicionados.
SELECT * FROM CLIENTE;

-- Criando uma procedure para alterar o seguimento dos clientes.
CREATE OR REPLACE PROCEDURE atualizar_cli_seg_mercado
(p_ID CLIENTE.ID%TYPE, p_SEGMERCADO_ID CLIENTE.SEGMERCADO_ID%TYPE)
IS
BEGIN
  UPDATE CLIENTE SET SEGMERCADO_ID = p_SEGMERCADO_ID
  WHERE ID = p_ID;
  COMMIT;
END;

-- Utilizando a procedure criada passando os parametros
DECLARE
BEGIN
  atualizar_cli_seg_mercado(3,2);
END;

-- Consultando se a alteração foi realizada com sucesso!!!
SELECT * FROM CLIENTE;
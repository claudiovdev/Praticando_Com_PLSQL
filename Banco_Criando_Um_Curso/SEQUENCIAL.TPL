-- Criando uma sequencial para tabela de Aluno
CREATE SEQUENCE SEQ_ALUNO START WITH 4;

-- Adicionando um novo aluno usando a sequencial criada
INSERT INTO TALUNO VALUES(SEQ_ALUNO.NEXTVAL, 'VALDO','CANOAS','11000000');
INSERT INTO TALUNO VALUES(SEQ_ALUNO.NEXTVAL, 'ANDRE','IVOTI','12000000')
COMMIT;

SELECT * FROM TALUNO;

-- Deletando um aluno

DELETE FROM TALUNO
WHERE TALUNO.COD_ALUNO = 5;

-- Realizando um rollback para cancelar a alteração feita no comando anterior
ROLLBACK;

-- trazendo um resultado buscando pelo nome do aluno
SELECT * FROM TALUNO
WHERE TALUNO.NOME = 'CLAUDIO';
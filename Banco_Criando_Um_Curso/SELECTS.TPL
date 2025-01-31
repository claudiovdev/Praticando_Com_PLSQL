-- Mostrando apenas algumas colunas da tabela

select ALU.COD_ALUNO, ALU.NOME, ALU.CIDADE
FROM TALUNO ALU;

-- Mostrando as colunas com nome personalizado
SELECT ALU.NOME AS "NOME DO ALUNO", ALU.CIDADE AS "CIDADE DO ALUNO"
FROM TALUNO ALU
WHERE ALU.COD_ALUNO = 2;

SELECT * FROM TALUNO;
-- Adicionando mais um aluno que pertença a mesma cidade que um outro aluno existente
INSERT INTO TALUNO VALUES(SEQ_ALUNO.NEXTVAL, 'THIAGO','MARANHÃO','23000999');

-- MOSTRANDO TODAS AS CIDADES DO BANCO DE DADOS SEM REPETIR OS NOMES.. ELIMINA OS REGISTROS DUPLOS
SELECT DISTINCT CIDADE FROM TALUNO;

SELECT ALU.CIDADE, ALU.COD_ALUNO
FROM TALUNO ALU
ORDER BY ALU.CIDADE;

-- Realizando uma divisão antes de mostrar no select
SELECT TCUR.NOME AS CURSO,
TCUR.VALOR AS VALOR_DO_CURSO,
TCUR.VALOR/TCUR.CARGA_HORARIA AS VALOR_HORA
FROM TCURSO TCUR;




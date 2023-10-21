-- Criando de dados

CREATE DATABASE empresa_xpto1;

-- Ativandoo banco de dados

USE empresa_xpto1;

-- Criando tabela 

CREATE TABLE funcionarios (
    nome VARCHAR (60),
    cpf  CHAR (12),
    cargo VARCHAR (60),
    salario FLOAT,
    nascimento DATE );

-- Inserir funcionarios na tabela 

INSERT INTO funcionarios ( codigo, nome, cpf, cargo, salario, nascimento)
VALUES (100, "Matheus", "111111111-11", "Auxiliar de producao", 1500.00, "1997-05-12"),
(105, "Joao", "111111111-11", "gestor", 5000.00, "1990-04-15");

-- Conferindo a tabela (usando * voce confere a tabela toda
SELECT * FROM funcionarios;

-- Selecionar partes especificas da tabela 
SELECT nome, nascimento FROM funcionarios;

SELECT nome, cargo, salario FROM funcionarios;

SELECT salario, cargo FROM funcionarios;

-- Selecionar utilizando filtros

##Consulte todas as colunas dos funcionários que são do cargo de Arquiteto de Software
SELECT * FROM funcionarios WHERE cargo = "Arquiteto de Software";

##Consulte as colunas nome, cargo e salario dos funcionários que são Gerente de projeto.
SELECT nome, cargo, salario FROM funcionarios WHERE cargo = "Gerente de Projetos";

##Consulte as colunas salario e cargo e salario dos funcionários que são Professor
SELECT salario, cargo FROM funcionarios WHERE cargo = "Professor";

##Consulte nome cargo e salario de quem recebe acima de 10000 reais.
SELECT nome, cargo, salario FROM funcionarios WHERE salario > 10000;

##Consulte nome de quem recebe abaixo do salário mínimo no estado do RJ
SELECT nome, salario FROM funcionarios WHERE salario <= 1500;

##Consulte os cargos que o salário é maior ou igual a 28 mil reais
SELECT cargo, salario FROM funcionarios WHERE salario >= 28000;

##Procure no Sistema a funcionária Monica Yates
SELECT nome, salario FROM funcionarios WHERE nome = "Monica Yates" ;

##Procure no Sistema o cargo e salario da funcionária Jennifer Gardner
SELECT cargo, salario FROM funcionarios WHERE nome = "Jennifer Gardner";

##Qual é a data de nascimento do Russell Cole?
SELECT nascimento FROM funcionarios WHERE nome = "Russell Cole";

##Qual o nome e o cargo do funcionário com CPF 84716339531?
SELECT nome, cargo FROM funcionarios WHERE cpf = "84716339531";

##Retorne Nome Completo, Salário e Data de nascimento dos funcionários que nasceram de 1998 em diante
SELECT 
	nome as 'Nome Completo', 
	salario as 'Salário', 
	nascimento as 'Data de Nascimento' 
FROM funcionarios where nascimento >= "1998-01-01";

##Consulte todas as colunas de todos os funcionários com os funcionários em ordem alfabética
SELECT * 
FROM funcionarios ORDER BY nome ASC;

##Consulte somente as colunas nome, cargo e salário de todos os funcionários ordenado pelo salário do maior para menor
SELECT 
	nome, cargo, salario 
FROM funcionarios ORDER BY salario DESC;

##Consulte as colunas salario e cargo de todos os funcionários ordenado do mais velho até o mais novo.
SELECT 
	salario, cargo, nascimento 
FROM funcionarios 
ORDER BY nascimento ASC;

##Consulte o nome completo e cargo dos 5 funcionários com maior salário
SELECT 
	nome as "Nome Completo", cargo 
FROM funcionarios 
order by salario 
limit 5;

##Qual o nome do funcionário mais velho da empresa?
SELECT 
	nome as "Nome Completo" 
FROM funcionarios 
order by nascimento asc 
limit 1;

##Quais são os 10 menores salários da empresa?
SELECT 
	nome as "Nome Completo", 
		salario as "Salário"
FROM funcionarios 
order by salario 
asc limit 10;

##Consulte nome, salario e cargo dos funcionarios que são professores em ordem alfabetica pelo nome do professor 
SELECT 
	nome, salario, cargo 
FROM funcionarios 
WHERE cargo = "Professor" 
order by nome ASC;

##Consulte nome , salario e cargo dos funcionarios dos medicos com os 5 maiores salarios
SELECT 
	nome, salario, cargo 
FROM funcionarios
WHERE cargo = "medico" 
order by salario 
DESC limit 5;

##Consulte o nome e cpf do funcionario no cargo de recepcionista com menor salario
SELECT 
	nome , cpf
FROM funcionarios 
WHERE cargo = "recepcionista" 
order by salario 
ASC limit 1;

DESCRIBE funcionarios;

set SQL_SAFE_UPDATES = 0;

DELETE FROM funcionarios;


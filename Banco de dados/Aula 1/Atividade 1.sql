-- Criando de dados

CREATE DATABASE empresa_xpto1;

-- Ativandoo banco de dados

USE empresa_xpto1;

-- Criando tabela 

CREATE TABLE funcionarios (
	codigo INT,
    nome VARCHAR (60),
    cpf  CHAR (12),
    cargo VARCHAR (60),
    salario FLOAT,
    nascimento DATE );

-- Inserir funcionarios na tabela 

INSERT INTO funcionarios ( codigo, nome, cpf, cargo, salario, nascimento)
VALUES (100, "Matheus", "111111111-11", "Auxiliar de producao", 1500.00, "1997-05-12"),
(105, "Joao", "111111111-11", "gestor", 5000.00, "1990-04-15");

SELECT * FROM funcionarios;


SET SQL_SAFE_UPDATES = 0;

## Muda na tabela funcionarios o nome selecionado para o meu 
UPDATE funcionarios set nome = "Matheus Nani" WHERE nome = "Monica Yates";

## Seleciona tudo sobre o funcionario com nome Matheus Nani
SELECT * FROM funcionarios where nome = "Matheus Nani";

## Muda todos os nomes da tabela funcionarios para o meu nome 
UPDATE funcionarios SET nome = "Matheus Nani";

## Selecionar tudo da tabela funcionarios
SELECT * FROM funcionarios;

## Deleta tudo da tabela 
DELETE FROM funcionarios;

## Exclui um  arquivo da tabela 
-- DELETE FROM <tabela> [condição];

## Exercicios
Delete FROM funcionarios where nome = "Monica Yates";

SELECT * FROM funcionarios where nome = "Monica Yates";

## Atualizar o salario dos professores com aumento de 10%
UPDATE funcionarios SET salario = salario * 1.1 WHERE cargo = "Professor";

## Conferindo se foi atualizado na tabela o salario
SELECT salario FROM funcionarios WHERE cargo = "Professor";

## Atualização do salario de pessoas que ganhavam menos de 1500
UPDATE funcionarios SET salario = 1500 Where salario < 1500;

SELECT salario FROM funcionarios WHERE salario < 1500;

##Atualizando de cargos de um so funcionario
UPDATE funcionarios Set cargo = "Desenvolvedor Front-End" WHERE nome = "Alan Robinson";

Select cargo FROM funcionarios WHERE nome = "Alan Robinson";

## Selecionar data e horario atual
SELECT NOW();
##Selecionar data do dia atual
SELECT CURDATE();
##Selecionar o dia
SELECT DAY('2023-10-20');
##Selecioanar o mês
SELECT MONTH('2023-10-20');
#Selecionar o Ano
SELECT YEAR('2023-10-20');

##Calcule a idade de todos os funcionários na tabela de funcionarios.
SELECT nome, YEAR(CURDATE()) - YEAR(NASCIMENTO) AS "Idade" FROM funcionarios;









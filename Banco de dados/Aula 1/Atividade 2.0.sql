-- Criando novo banco de dados
CREATE DATABASE alunos_curso;

-- Ativação do banco de dados
USE alunos_curso;

-- CRIANDO TABELA 


CREATE TABLE biblioteca(
	codigo INT,
    nome_do_curso VARCHAR(60),
    qts_de_vagas INT);
    
    
CREATE TABLE tabela_aluno_curso (
	matricula INT,
    nome VARCHAR (45),
    curso VARCHAR (45));
    
INSERT INTO tabela_aluno_curso (matricula, nome, curso)
VALUES (100, "Leon marques", "Programador"),
(101, "Eduardo Madureira", "Programador"),
(200, "Lucas Cavalheiro", "Eletricista");


INSERT INTO biblioteca (codigo, nome_do_curso, qts_de_vagas)
VALUES (1, "Programador", "30"),
(2, "Eletrotécnica", "20"),
(3, "Auxiliar_administrativo", "40");

SELECT * FROM biblioteca;
SELECT * FROM tabela_aluno_curso;
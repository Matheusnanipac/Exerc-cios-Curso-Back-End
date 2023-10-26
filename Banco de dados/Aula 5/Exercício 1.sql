
CREATE DATABASE library;

USE library;

SELECT * FROM livros;

SELECT * FROM livros WHERE id_editora = 2;

SELECT * FROM livros WHERE id_editora = 2 OR id_editora = 1;

CREATE TABLE editoras(
	id_editora INT,
    nome VARCHAR(45),
    cnpj CHAR(14),
    PRIMARY KEY(id_editora)
);
CREATE TABLE livros(
	id_livros INT,
    titulo VARCHAR(45),
    lancamento INT,
    id_editora INT,
    PRIMARY KEY(id_livros),
    FOREIGN KEY(id_editora) REFERENCES editoras(id_editora)
    );
    
UPDATE livros SET titulo = "Gestão de pessoas e culturas organizacional" WHERE id_livros = 201;
    
INSERT INTO editoras ( id_editora, nome, cnpj)
VALUES (1, "intrinseca", "05660045000106");

INSERT INTO editoras ( id_editora, nome, cnpj)
VALUES (2, "Atlas", "61080370000766");

INSERT INTO editoras( id_editora, nome, cnpj)
VALUES (3, "ROCCO", "42444703000159");

INSERT INTO livros(id_livros, titulo, lancamento, id_editora)
VALUES (100, "Uma breve história do tempo", 1998, 1);

INSERT INTO livros(id_livros, titulo, lancamento, id_editora)
VALUES (101, "Fobias e Manias", 2023, 1);

INSERT INTO livros(id_livros, titulo, lancamento, id_editora)
VALUES (102, "Trader ou Investidor", 2023, 1);

INSERT INTO livros(id_livros, titulo, lancamento, id_editora)
VALUES (200, "Administração", 2023, 2);

INSERT INTO livros(id_livros, titulo, lancamento, id_editora)
VALUES (201, "Gestão de pessoas e culturas organizacional", 2021, 2);

INSERT INTO livros(id_livros, titulo, lancamento, id_editora)
VALUES(300, "Harry Potter Prisioneiro de Azkaban", 2018, 3);
    
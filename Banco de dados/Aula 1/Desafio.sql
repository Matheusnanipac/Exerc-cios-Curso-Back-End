CREATE DATABASE livros;

USE livros;

CREATE TABLE tabela_de_livros (
	autor VARCHAR(65),
    editora VARCHAR(65),
    ano DATE,
    preço FLOAT);

INSERT INTO tabela_de_livros (autor, editora, ano, preço)
VALUE ("STEPHEN HAWKING","Intrísica", "2015-01-13", 39.99),
("ROBERT TORU KIYOSAKI", "Alta Books", "2018-09-05", 62.98),
("YUVAL NOAH HARARI", "L&PM", "2015-01-01", 94.05);

SELECT * FROM tabela_de_livros;
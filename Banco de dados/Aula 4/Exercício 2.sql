
CREATE DATABASE bibliotecas;

USE bibliotecas;

CREATE TABLE editora( 
	id_editora INT,
    nome VARCHAR(45),
    cnpj CHAR(14),
    PRIMARY KEY(id_editora)
    );
    
CREATE TABLE livros(
	id_livro INT,
    titulo VARCHAR(45),
    lancamento VARCHAR(45),
    PRIMARY KEY(id_livro)
    );
	
    

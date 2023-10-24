##CRIAR BANCO DE DADOS
CREATE DATABASE cine_senai_max;

##EXCLUIR UMA TABELA 
DROP TABLE filmes;

##ATIVAR O BANCO DE DADOS
USE cine_senai_max;

##CRIANDO TABELA
CREATE TABLE filmes (
	id_filme INT,
	titulo VARCHAR(60),
    genero VARCHAR(45),
    duracao INT,
    ano_lancamento INT,
    preco_aluguel DOUBLE,
    primary key(id_filme)
    );
 
##INSERINDO DADOS NO BANCO DE DADOS 
insert into filmes(id_filme, Titulo, genero, duracao, ano_lancamento, preco_aluguel)
VALUES (1, "Tropa de Elite", "Ação", 115, 2007, 5.99);

##CONFERINDO DADOS QUE EU COLOQUEI
SELECT * FROM filmes;

##Localize o nome e gênero do filme com id 6
SELECT titulo, genero FROM filmes WHERE id_filme = 6;

##Localize o nome e ano de lançamento do filme com id 33
SELECT titulo, ano_lancamento FROM filmes WHERE id_filme = 33;

##O registro com id 73 foi cadastrado incorretamente. Localize esse registro, confirme se realmente não se trata de um filme. Caso não seja um filme, realize a exclusão.
SELECT * FROM filmes WHERE id_filme = 73;

##EXCLUSAO DE UM NÃO FILME
DELETE FROM filmes WHERE id_filme = 73;

##O filme Rio 2 foi cadastrado como filme de Ação, porém se trata de uma Animação. Primeiro consulte o filme Rio 2 pelo nome, para identificar qual é o seu ID e em seguida atualize o gênero utilizando o id do filme como filtro.
##CONSULTANDO O FILME PARA VER QUAL E SEU ID (71)
SELECT * FROM filmes WHERE titulo = "Rio 2";

##ATUALIZANDO GENERO DO FILME
UPDATE filmes SET genero = "Animação" WHERE id_filme = 71;

##Como forma de aumentar os lucros, foi solicitado um aumento em 10% no preço do aluguel do filme
UPDATE filmes SET preco_aluguel = preco_aluguel * 1.1 WHERE id_filme = 1;

##ATUALIZANDO VALOR DO ALUGUEL
UPDATE filmes SET preco_aluguel = 1.79 WHERE id_filme = 71;

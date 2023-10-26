
set sql_safe_updates = 0;


##Consulte o titulo, gênero e preço do aluguel dos filmes que são de Drama OU Comédia
SELECT titulo, genero, preco_aluguel FROM filmes WHERE genero = "Drama" OR genero = "Comédia";

##Consulte titulo e ano lançamento dos filmes lançados entre 2001 E 2005
SELECT titulo, ano_lancamento FROM filmes WHERE ano_lancamento >= 2001 AND ano_lancamento <= 2005;

##Consulte titulo, ano lançamento e gênero dos filmes de Drama ou Animação que foram lançados depois de 2009
SELECT titulo, ano_lancamento, genero FROM filmes WHERE (genero = "Drama" OR genero = "Animação") AND ano_lancamento > 2009;

##Consulte titulo, ano lançamento e gênero dos filmes de Ação e Aventura ou Mistério e Suspense que foram lançados entre 2005 e 2010
SELECT  titulo, ano_lancamento, genero FROM filmes WHERE (genero = "Ação e Aventura" OR genero = "Misterio e Suspense") AND (ano_lancamento >= 2005 AND ano_lancamento <= 2010);

##Consulte titulo, ano lançamento e gênero dos filmes de Ação e Aventura ou Mistério e Suspense que foram lançados entre 2005 e 2010 com preço de aluguel maior que 3 reais
SELECT titulo, ano_lancamento, genero FROM filmes WHERE (genero = "Ação e Aventura" OR genero = "Mistério e Suspense") AND (ano_lancamento >= 2005 AND ano_lancamento <= 2010) AND preco_aluguel > 3;

##Aumente em 10% o preço de aluguel dos filmes que possuem o preço de aluguel entre 4 e 5 reais.
UPDATE filmes SET preco_aluguel = preco_aluguel * 1.1 WHERE preco_aluguel >= 4 AND preco_aluguel <= 5;

##Aumente em 15% o preço de aluguel dos filmes que possuem o preço de aluguel entre 2 e 3 reais.
UPDATE filmes SET preco_aluguel = preco_aluguel * 1.15 WHERE preco_aluguel >= 2 AND preco_aluguel <= 3;

##Os filmes lançados entre 2001 e 2003 terão um desconto de 10% no preço de aluguel
UPDATE filmes SET preco_aluguel = preco_aluguel * 0.9 WHERE ano_lancamento >= 2001 AND ano_lancamento <= 2003;

##Os filmes de comédia lançados em 2001 terão um desconto de 15%
UPDATE filmes SET preco_aluguel = preco_aluguel * 0.85 WHERE genero = "Comedia" AND ano_lancamento = 2001;


##Ainda no mesmo banco de dados cine_senai_max, crie mais uma tabela chamada atores com as seguintes colunas: id_ator INT, nome_ator VARCHAR(60), ano_nascimento INT, nacionalidade VARCHAR(20), sexo VARCHAR(10).

CREATE TABLE atores (
	id_ator INT,
    nome_ator VARCHAR(60),
    ano_nascimento INT,
    nacionalidade VARCHAR(60),
    sexo VARCHAR(10),
    PRIMARY KEY(id_ator)
    );
    
INSERT INTO atores (id_ator, nome_ator, ano_nascimento, nacionalidade, sexo)
VALUES( 1, "Wagner Moura" , 1976 , "Brasileiro", "Maculino");

CREATE DATABASE estoque_senai;

USE estoque_senai;

SELECT * FROM marca;

SELECT * FROM produtos;

CREATE TABLE marca (
	id_marca INT,
    nome VARCHAR(45),
    descricao VARCHAR(45),
    PRIMARY KEY(id_marca)
);

CREATE TABLE produtos(
	id_produtos INT,
    nome VARCHAR(45),
    preco_unitario float(45),
    id_marca INT,
    PRIMARY KEY(id_produtos),
    FOREIGN KEY(id_marca) REFERENCES marca(id_marca)
    );


INSERT INTO marca (id_marca, nome, descricao)
VALUES(1, "Eudora SHAMPOO",  "higiene pessoal"); 

INSERT INTO marca (id_marca, nome, descricao)
VALUES(2, "Logitech", "Mouse Gamer");

INSERT INTO marca (id_marca, nome, descricao)
VALUES(3, "Apple", "Aparelho celular");

INSERT INTO produtos(id_produtos, nome, preco_unitario, id_marca)
VALUES(1, "Shampoo", 89.90, 1);

INSERT INTO produtos(id_produtos, nome, preco_unitario, id_marca)
VALUES(2, "G203 RGB", 139.99, 2);

INSERT INTO produtos(id_produtos, nome, preco_unitario, id_marca)
VALUES(3, "Iphone 15", 7289.19, 3);




    
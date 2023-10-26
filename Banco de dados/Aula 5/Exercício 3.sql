
CREATE DATABASE entregas_express;

USE entregas_express;

SELECT * FROM paises;

SELECT * FROM unidade_federativa;

SELECT * FROM municipios;

UPDATE unidade_federativa SET nome_uf = "Minas Gerais" WHERE cod_uf = 2;

UPDATE unidade_federativa SET abreviacao_uf = "MG" WHERE cod_uf = 2;

CREATE TABLE paises(
	id_pais INT,
    nome VARCHAR(45),
    latitude VARCHAR(45),
    longitude VARCHAR(45),
    idioma_oficial VARCHAR(45),
    PRIMARY KEY(id_pais)
    );
    
CREATE TABLE unidade_federativa(
	cod_uf INT,
    nome_uf VARCHAR(45),
    abreviacao_uf CHAR(2),
    id_pais INT,
    PRIMARY KEY(cod_uf)
    );
    
CREATE TABLE municipios(
	id_municipio INT,
    nome VARCHAR(45),
    cod_uf INT,
    PRIMARY KEY(id_municipio)
    );
    
INSERT INTO paises(id_pais, nome, latitude, longitude, idioma_oficial)
VALUES(1, "BRASIL", "Norte	+05o 16'19", "Norte -60o 12'45","Portugues brasil");

INSERT INTO unidade_federativa( cod_uf, nome_uf, abreviacao_uf, id_pais)
VALUES(1,"Rio de Janeiro",  "RJ", 1);

INSERT INTO unidade_federativa( cod_uf, nome_uf, abreviacao_uf, id_pais)
VALUES(2, "Belo Horizonte","BH", 1);

INSERT INTO unidade_federativa( cod_uf, nome_uf, abreviacao_uf, id_pais)
VALUES(3, "São Paulo", "SP", 1);

INSERT INTO municipios(id_municipio, nome, cod_uf)
VALUES(1, "Belford Roxo", 1);

INSERT INTO municipios(id_municipio, nome, cod_uf)
VALUES(2, "Duque de caxias", 1);

INSERT INTO municipios(id_municipio, nome, cod_uf)
VALUES(3, "Brumadinho", 2);

INSERT INTO municipios(id_municipio, nome, cod_uf)
VALUES(4, "Betim", 2);

INSERT INTO municipios(id_municipio, nome, cod_uf)
VALUES(5, "Ribeirão Preto", 3);

INSERT INTO municipios(id_municipio, nome, cod_uf)
VALUES(6, "Campinas", 3);

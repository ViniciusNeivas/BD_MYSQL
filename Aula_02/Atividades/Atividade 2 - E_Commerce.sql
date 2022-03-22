-- Criar Banco de dados
CREATE DATABASE db_e_commerce;

-- Selecionar o Banco de Dados
USE db_e_commerce;

-- Criar tabela
CREATE TABLE tb_produtos(
ID BIGINT AUTO_INCREMENT,
Nome VARCHAR (225) NOT NULL,
Marca VARCHAR (225) NOT NULL,
Modelo VARCHAR (225) NOT NULL,
Preco decimal NOT NULL,
Quantidade INT,
PRIMARY KEY (ID)
);

-- Inserir dados na tabela 
INSERT INTO tb_produtos (Nome, Marca, Modelo, Preco, Quantidade)
VALUES ("Tênis", "Nike", "Air Jordan", 205.00,90);

INSERT INTO tb_produtos (Nome, Marca, Modelo, Preco, Quantidade)
VALUES ("Tênis", "Adidas", "RUN DMC", 199.90,100);

INSERT INTO tb_produtos (Nome, Marca, Modelo, Preco, Quantidade)
VALUES ("Boné", "Nike", "Nike SB", 150.00,16);

INSERT INTO tb_produtos (Nome, Marca, Modelo, Preco, Quantidade)
VALUES ("HD Externo", "DELL", "D-469", 534.50,40);

INSERT INTO tb_produtos (Nome, Marca, Modelo, Preco, Quantidade)
VALUES ("Garrafa de Água", "R.S. Impact", "Squeeze BR", 45.00,19);

INSERT INTO tb_produtos (Nome, Marca, Modelo, Preco, Quantidade)
VALUES ("Chaveiro", "Disney", "Mickey Mouse", 125.00,90);

INSERT INTO tb_produtos (Nome, Marca, Modelo, Preco, Quantidade)
VALUES ("Cartão de Memória", "Kingstone", "KS-228-512 G", 205.00,200);

INSERT INTO tb_produtos (Nome, Marca, Modelo, Preco, Quantidade)
VALUES ("Conjunto de Talheres", "Tramotina", "Turin - Black", 543.00,90);

SELECT * FROM tb_produtos;


SELECT * FROM tb_produtos WHERE Preco > 500.00;


SELECT * FROM tb_produtos WHERE Preco < 500.00;

SELECT Nome, concat('R$ ', FORMAT (Preco, 2, 'pt_BR')) AS Preco FROM tb_produtos;

UPDATE tb_produtos SET Preco = 678.00 WHERE ID = 1;


DELETE FROM tb_produtos WHERE id = 4;

ALTER TABLE tb_produtos MODIFY preco decimal(6, 2);

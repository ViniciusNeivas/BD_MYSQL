
CREATE DATABASE db_farmacia_do_bem_;

USE db_farmacia_do_bem_;

-- criar tb_categorias
CREATE TABLE tb_categorias (
id bigint AUTO_INCREMENT,
descricao VARCHAR (255) NOT NULL,
PRIMARY KEY (id)
);

-- Insere dados na tabela tb_categorias

INSERT INTO tb_categorias (descricao)
VALUES ("Medicamentos");

INSERT INTO tb_categorias (descricao)
VALUES ("Cosméticos");

INSERT INTO tb_categorias (descricao)
VALUES ("Higiene Pesssoal");

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar (255) NOT NULL,
quantidade int,
data_validade date NULL,
preco decimal (6,2),
fabricante varchar (255) NOT NULL,
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, fabricante, categoria_id)
VALUES("Dipirona", 200, "2024-08-14", 2,"Prati",1);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, fabricante, categoria_id)
VALUES("Sabonete Antibacteriano", 50, "2023-03-11", 1.65, "Protex",3);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, fabricante, categoria_id)
VALUES("Antigripal", 256, "2024-05-23", 3.50, "CIMED",1);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, fabricante, categoria_id)
VALUES("Creme Hidratante", 32, "2023-05-29", 3.90, "Davene",2);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, fabricante, categoria_id)
VALUES("Desodorante para os pés", 49, "2023-02-26", 2.90, "Baruel",3);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, fabricante, categoria_id)
VALUES("Neosaldina", 500, "2023-03-11", 1.34, "Cosmed",1);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, fabricante, categoria_id)
VALUES("Sabonete Hidratante", 67, "2023-11-11", 4.65, "Dove",3);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, fabricante, categoria_id)
VALUES("Torsilax", 123, "2024-01-09", 4.76, "Neo Química",1);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, fabricante, categoria_id)
VALUES("Listerine", 25, "2023-12-12", 12.45, "Jonhson&Johnson",3);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco, fabricante, categoria_id)
VALUES("Shampoo Antiqueda Masculino", 25, "2023-12-12", 103, "",2);

SELECT * FROM tb_produtos;

-- Produtos com preço maior que 50 reais.
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- Produtos  com precço entre 3 e 60 reais
SELECT * FROM tb_produtos WHERE preco BETWEEN 3.00 AND 60.00;

-- Produtos com a letra "B" no nome
SELECT * FROM tb_produtos WHERE nome like "%b%";

SELECT nome, data_validade, quantidade,preco, fabricante, tb_categorias.descricao AS descricao_da_categoria
FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id; 

SELECT nome, data_validade, quantidade,preco, fabricante, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.descricao = "Cosméticos";

SELECT nome, data_validade, quantidade,preco, fabricante, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.descricao = "Medicamentos";

SELECT nome, data_validade, quantidade,preco, fabricante, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.descricao = "Higiene Pessoal";

UPDATE tb_categorias SET descricao = "Higiene Pessoal" WHERE id = 3;
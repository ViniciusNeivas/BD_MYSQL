-- Criar Banco de dados
CREATE DATABASE db_quitanda;

-- Selecionar o Banco de Dados
USE db_quitanda;

-- Criar Tabela tb_protutos
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT, 
nome varchar (255) NOT NULL,
quantidade int,
data_validade date,
preco decimal NOT NULL,
PRIMARY KEY (id)
);

-- Inserir dados na tabela

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("Arroz", 50, "2023-04-29",20.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("Chuchu", 20, "2022-03-19", 20.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("Tomate", 80, "2022-03-19", 16.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("Cenoura", 30, "2022-05-29", 13.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("Morango", 1, "2023-04-29", 8.50);


-- Listar todos os produtos
SELECT * FROM tb_produtos;

SELECT nome, preco FROM tb_produtos;

SELECT  * FROM tb_produtos WHERE preco > 10.00;

SELECT  * FROM tb_produtos WHERE preco > 10.00 AND quantidade > 50;

SELECT nome, CONCAT('R$', FORMAT (preco, 2, 'pt_BR')) AS preço FROM tb_produtos;

-- Atualizar daddos da tabela

UPDATE tb_produtos SET preco = 8.50 WHERE id = 6;

UPDATE tb_produtos SET preco = 8.50;

UPDATE tb_produtos SET preco = 12 WHERE id =5;

DELETE FROM tb_produtos WHERE id = 1;


/*Alterações na estrutura da tabela*/

ALTER TABLE tb_produtos MODIFY preco decimal (8,2);

ALTER TABLE tb_produtos ADD descricao varchar (255); 

ALTER TABLE tb_produtos DROP descricao;

-- ALTER TABLE tb_produtos CHANGE precov preco decimal (8,2);

DROP DATABASE db_quitanda

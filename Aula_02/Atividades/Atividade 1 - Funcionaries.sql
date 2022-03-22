-- 
CREATE DATABASE db_funcionaries;

-- Selecionar banco de dados
USE db_funcionaries;

-- Criar Tabela 
CREATE TABLE tb_funcionaries (
ID BIGINT AUTO_INCREMENT,
Nome_Completo VARCHAR (255) NOT NULL,
Setor VARCHAR (255) NOT NULL,
Funcao VARCHAR (22) NOT NULL,
Salario DECIMAL NOT NULL,
Endereço VARCHAR (255) NOT NULL,
PRIMARY KEY (ID)
);

-- Inserir dados na tabela
INSERT INTO tb_funcionaries (Nome_Completo, Setor, Funcao, Salario, Endereço)
VALUES ("João Souza da Silva", "Compras", "Assistente de Compras", 1980.00, "Avenida João de Andrande, N° 365 - Jardim Santo Antônio - Osasco - SP");

INSERT INTO tb_funcionaries (Nome_Completo, Setor, Funcao, Salario, Endereço)
VALUES ("Judith Siqueira da Silva", "Projetos", "Gerente de Projetos", 3400.00, "Rua Bom Sucesso, N° 1903 - Jardim Parque dos Príncipes - Osasco - SP");

INSERT INTO tb_funcionaries (Nome_Completo, Setor, Funcao, Salario, Endereço)
VALUES ("Sophia Marques de Souza", "Obras", "Gerente de Obras", 3800, "Rua Doutor Cândido Motta, N° 2000 - Jardim Parque dos Príncipes - Osasco - SP");

INSERT INTO tb_funcionaries (Nome_Completo, Setor, Funcao, Salario, Endereço)
VALUES ("Pedro Martins Oliveira", "Almoxarifado", "Assistente de Almoxarifado", 1500.00, "Rua Urano, N° 90 - Jardim Santo Antônio - Osasco - SP");

-- Listar todos os produtos

SELECT * FROM tb_funcionaries;

SELECT Nome_Completo, salario FROM tb_funcionaries;

SELECT * FROM tb_funcionaries WHERE Salario > 2000.00;

SELECT * FROM tb_funcionaries WHERE Salario < 2000.00;

SELECT Nome_Completo, concat('R$ ', FORMAT (Salario, 2, 'pt_BR')) AS Salario FROM tb_funcionaries;

-- Atualizar dados da tabela

DELETE FROM tb_funcionaries WHERE id = 4;


-- Alterações na estrutura da tabela

ALTER TABLE tb_funcionaries MODIFY Funcao VARCHAR (225);
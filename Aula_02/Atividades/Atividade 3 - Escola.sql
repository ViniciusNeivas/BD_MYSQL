-- Criar de Banco de Dados
CREATE DATABASE db_Professor_Newtow_Espirito_Santo_Ayres;

-- Selecionar Banco de Dados
USE  db_Professor_Newtow_Espirito_Santo_Ayres;

-- Criar Tabela
CREATE TABLE td_estudantes(

id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
nivel VARCHAR (255),
periodo VARCHAR (255),
turma VARCHAR (255),
media_final decimal NOT NULL,
PRIMARY KEY (id)

);

-- Inserir dados

INSERT INTO td_estudantes (nome, nivel, periodo, turma, media_final)
VALUES ("Fernando Freitas da Silva", "Médio", "Manhã", "3°A", 8.0);

INSERT INTO td_estudantes (nome, nivel, periodo, turma, media_final)
VALUES ("Lucas Alves dos Santos", "Fundamental", "Tarde", "7°C", 6.7);

INSERT INTO td_estudantes (nome, nivel, periodo, turma, media_final)
VALUES ("Adeline Martins Silva", "Médio", "Noturno", "2°F", 9.8);

INSERT INTO td_estudantes (nome, nivel, periodo, turma, media_final)
VALUES ("Josimar Andrade Lima", "Médio", "Manhã", "1°A", 6.5);

INSERT INTO td_estudantes (nome, nivel, periodo, turma, media_final)
VALUES ("Nadine Alencar de Souza ", "Fundamental", "Tarde", "5°H", 6.0);

INSERT INTO td_estudantes (nome, nivel, periodo, turma, media_final)
VALUES ("Pedro Henrique Pereira", "Médio", "Noturno", "3°G", 9.6);

INSERT INTO td_estudantes (nome, nivel, periodo, turma, media_final)
VALUES ("Joyce Siqueira Souza", "Fundamental", "Tarde", "5°A", 7.0);

INSERT INTO td_estudantes (nome, nivel, periodo, turma, media_final)
VALUES ("Janine dos Santos Borges", "Médio", "Manhã", "3°A", 10.0);


-- Visualizar todos os dados

SELECT * FROM td_estudantes;
 
UPDATE td_estudantes SET media_final = 5.6 WHERE id = 2;
UPDATE td_estudantes SET media_final = 5.2 WHERE id = 5;
UPDATE td_estudantes SET media_final = 9.8 WHERE id = 6;

ALTER TABLE td_estudantes MODIFY media_final decimal (6, 2);

SELECT * FROM td_estudantes WHERE media_final > 7;
SELECT * FROM td_estudantes WHERE media_final < 7;

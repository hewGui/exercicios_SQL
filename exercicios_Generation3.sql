CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE td_alunos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(200) NOT NULL,
nota DECIMAL(5,2),
turma VARCHAR(50),
orientador VARCHAR(200)
);

INSERT INTO td_alunos(nome, nota, turma, orientador)
VALUES
('Alice Silva', '9.5', '3A', 'Professor João'),
('Bruno Costa', '8.0', '2B', 'Professora Maria'),
('Carla Mendes', '6.25', '1C', 'Professor Pedro'),
('Daniel Souza', '8.75', '4D', 'Professora Ana'),
('Elaine Rocha', '9.0', '3A', 'Professor João'),
('Felipe Lima', '6.0', '2B', 'Professora Maria'),
('Gabriela Teixeira', '4.50', '1C', 'Professor Pedro'),
('Henrique Alves', '9.0', '4D', 'Professora Ana');

SELECT * FROM td_alunos WHERE nota > 7.0;

SELECT * FROM td_alunos WHERE nota >= 7.0;

SELECT * FROM td_alunos WHERE nota < 7.0;

UPDATE td_alunos SET nota = '7.00' WHERE id = 6;
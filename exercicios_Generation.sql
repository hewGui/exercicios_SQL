CREATE DATABASE db_empresa;

USE db_empresa;

CREATE TABLE tb_funcionarios(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(200),
cargo VARCHAR(50),
salario decimal(10,2),
data_admissao DATE
);

INSERT INTO tb_funcionarios(nome, cargo, salario, data_admissao)
VALUES
('Guilherme Soares', 'Desenvolvedor', '4000.00', '2024-05-08'),
('Gabriel Oliveira', 'Desenvolvedor', '4000.00', '2023-03-10'),
('Maria Fontes', 'Analista de Dados', '3500.00', '2023-08-26'),
('Gabriela Nogueira', 'Engenheira de Dados', '5000.00', '2022-10-24'),
('Julia Souza', 'Analista de Cybersegurança', '3500.00', '2023-11-17'),
('Fabio Rodrigues', 'Porteiro', '1900.00', '2024-02-27');

SELECT * FROM tb_funcionarios WHERE salario > 2000;

SELECT * FROM tb_funcionarios WHERE salario < 2000;

UPDATE tb_funcionarios SET salario = '2000.00' WHERE id = 6;

SELECT * FROM tb_funcionarios WHERE salario <= 2000;
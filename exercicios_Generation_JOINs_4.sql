CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_categoria VARCHAR(100),
oferta VARCHAR(10)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
descricao TEXT NOT NULL,
preco DECIMAL(10,2) NOT NULL,
categorias_id BIGINT,
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(nome_categoria, oferta) 
VALUES 
('Carnes Bovinas', 'não'),
('Carnes Suínas', 'sim'),
('Aves', 'não'),
('Pescados', 'sim'),
('Carneiro e Cordeiro', 'não');


INSERT INTO tb_produtos (nome, descricao, preco, categorias_id) 
VALUES 
('Picanha', 'Corte nobre de carne bovina', 39.99, 1),
('Linguiça de Porco', 'Linguiça artesanal de porco', 15.50, 2),
('Frango Inteiro', 'Frango inteiro congelado', 12.99, 3),
('Salmão', 'Filé de salmão fresco', 52.00, 4),
('Costela de Cordeiro', 'Costela de cordeiro premium', 59.99, 5),
('Alcatra', 'Corte de carne bovina', 29.99, 1),
('Costelinha de Porco', 'Costelinha de porco ao barbecue', 17.99, 2),
('Coxa de Frango', 'Coxa de frango com pele', 9.50, 3);


SELECT * FROM tb_produtos WHERE preco > 50.00; 

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome like '%C%';     

SELECT *
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id  
ORDER BY tb_produtos.id;

SELECT *
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id 
WHERE tb_categorias.nome_categoria = 'Carnes Bovinas';
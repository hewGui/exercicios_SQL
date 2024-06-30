CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

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

INSERT INTO tb_categorias (nome_categoria, oferta) 
VALUES 
('Medicamentos', 'sim'),
('Higiene Pessoal', 'não'),
('Suplementos', 'sim'),
('Beleza','não'),
('Primeiros Socorros', 'não');

INSERT INTO tb_produtos (nome, descricao, preco, categorias_id) 
VALUES 
('Paracetamol', 'Medicamento para dor e febre', 5.99, 1),
('Escova de Dentes elétrica', 'Escova de dentes Elétrica com 1 refil', 52.00, 2),
('Vitamina C', 'Suplemento de vitamina C 500mg', 12.00, 3),
('Shampoo', 'Shampoo para cabelo normal', 30.00, 4),
('Band-aid', 'Curativos adesivos', 4.50, 5), 
('Ibuprofeno', 'Anti-inflamatório e analgésico', 6.99, 1), 
('Desodorante', 'Desodorante aerosol', 8.50, 2), 
('Omega 3', 'Suplemento de ômega 3', 15.99, 3); 

SELECT * FROM tb_produtos WHERE preco > 50.00; 

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome like '%C%';     

SELECT *
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id;  

SELECT *
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id 
WHERE tb_categorias.nome_categoria = 'Higiene Pessoal';




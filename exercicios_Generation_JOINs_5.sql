CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

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
('Ferramentas', 'não'),
('Tijolos', 'sim'),
('Tintas', 'não'),
('Tubulações', 'sim'),
('Elétrica', 'não');

INSERT INTO tb_produtos (nome, descricao, preco, categorias_id) 
VALUES 
('Martelo', 'Martelo de aço com cabo de madeira', 25.50, 1),
('Tijolo de Barro', 'Tijolo de barro para construção', 1.00, 2),
('Tinta Acrílica', 'Tinta acrílica branca, 18L', 120.00, 3),
('Tubo PVC', 'Tubo de PVC 100mm, 3m', 35.00, 4),
('Fio Elétrico', 'Fio elétrico 2,5mm, 100m', 150.00, 5),
('Serrote', 'Serrote para madeira', 45.00, 1),
('Tijolo Ecológico', 'Tijolo ecológico de solo-cimento', 1.50, 2),
('Tinta Esmalte Sintético', 'Tinta esmalte sintético, 3,6L', 75.00, 3);

SELECT * FROM tb_produtos WHERE preco > 100.00; 

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome like '%C%';     

SELECT *
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id  
ORDER BY tb_produtos.id;

SELECT *
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id 
WHERE tb_categorias.nome_categoria = 'Tintas';
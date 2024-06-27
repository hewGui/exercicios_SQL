CREATE DATABASE db_loja;

USE db_loja;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_produto VARCHAR(200),
marca VARCHAR(100),
preco decimal(10,2),
categoria VARCHAR(100)
);

INSERT INTO tb_produtos(nome_produto, marca, preco, categoria)
VALUES
('Galaxy A05', 'Samsung', '719.20', 'Celulares e Smartphones'),
('Panela de Pressão Elétrica', 'Midea', '459.00', 'Eletrodomésticos'),
('Lava e Seca', 'Philco', '2700.00', 'Eletrodomésticos'),
('Smartwatch', 'Haiz', '152.00', 'Smartwatch e Acessórios'),
('Air Fryer', 'Mondial', '296.00', 'Eletrodomésticos'),
('Armário Cozinha Completa', 'Arizona', '860.00', 'Móveis'),
('Sofá Retratil 3 Lugares', 'Phormatta', '1079.00', 'Móveis'),
('Bicicleta Ergométrica', 'PodiumFit', '1351.00', 'Fitness e Musculação');

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = '2500.00' WHERE id = 3;

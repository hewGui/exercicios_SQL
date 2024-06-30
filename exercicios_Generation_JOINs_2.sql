CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_categoria VARCHAR(100),
tamanho VARCHAR(100) NOT NULL,
oferta VARCHAR(10)
);	

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
descricao TEXT NOT NULL,
preco DECIMAL(10,2) NOT NULL,
categorias_id BIGINT,
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, tamanho, oferta) 
VALUES 
    ('Clássicas', 'Médio', 'sim'),
    ('Gourmet', 'Grande', 'sim'),
    ('Vegetarianas', 'Médio', 'sim'),
    ('Doces', 'Pequeno', 'sim'),
    ('Especiais','Grande', 'não');
    
INSERT INTO tb_pizzas (nome, descricao, preco, categorias_id) 
VALUES 
    ('Margherita', 'Molho de tomate, mussarela e manjericão fresco.', 25.00, 1),
    ('Pepperoni', 'Molho de tomate, mussarela e fatias de pepperoni.', 30.00, 1),
    ('Trufa Negra', 'Molho de trufas negras, queijo brie e rúcula.', 50.00, 2),
    ('Quatro Queijos', 'Mussarela, gorgonzola, parmesão e provolone.', 35.00, 2),
    ('Vegetariana', 'Molho de tomate, mussarela, pimentões, azeitonas e cebola.', 28.00, 3),
    ('Caprese', 'Tomate, mussarela de búfala, manjericão e azeite.', 32.00, 3),
    ('Chocolate', 'Chocolate ao leite derretido e morangos frescos.', 22.00, 4),
    ('Camarão Especial', 'Camarão, alho-poró e creme de leite.', 45.00, 5);  
 
SELECT * FROM tb_pizzas WHERE preco > 45.00; 

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome like '%M%';     

SELECT *
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id;  

SELECT tb_pizzas.nome, tb_pizzas.descricao, tb_pizzas.preco, tb_categorias.tamanho, tb_categorias.nome_categoria, tb_categorias.oferta
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id
WHERE tb_categorias.nome_categoria = 'Clássicas';


  
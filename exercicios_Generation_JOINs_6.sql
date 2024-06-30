CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_categoria VARCHAR(100),
duracao VARCHAR(10)
);

CREATE TABLE tb_cursos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
descricao TEXT NOT NULL,
preco DECIMAL(10,2) NOT NULL,
categorias_id BIGINT,
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, duracao) VALUES 
('Desenvolvimento Web', '6 meses'),
('Data Science', '8 meses'),
('Marketing Digital', '4 meses'),
('Design Gráfico', '5 meses'),
('Gestão de Projetos', '7 meses');

INSERT INTO tb_cursos (nome, descricao, preco, categorias_id) 
VALUES 
('Desenvolvimento Web Completo', 'Curso abrangente de desenvolvimento web', 650.00, 1),
('Introdução à Data Science', 'Fundamentos e técnicas de Data Science', 249.99, 2),
('Marketing Digital Estratégico', 'Estratégias avançadas de marketing digital', 560.00, 3),
('Design Gráfico Avançado', 'Técnicas avançadas de design gráfico', 179.99, 4),
('Gestão de Projetos Agile', 'Metodologias ágeis para gestão de projetos', 349.99, 5),
('Programação em Python', 'Curso prático de programação em Python', 179.99, 1),
('Machine Learning Fundamentals', 'Fundamentos de Machine Learning', 550.00, 2),
('Publicidade Digital', 'Estratégias avançadas de publicidade digital', 700.00, 3);

SELECT * FROM tb_cursos WHERE preco > 500.00; 

SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome like '%J%';     

SELECT *
FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categorias_id = tb_categorias.id  
ORDER BY tb_cursos.id;

SELECT *
FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categorias_id = tb_categorias.id 
WHERE tb_categorias.nome_categoria = 'Desenvolvimento Web';
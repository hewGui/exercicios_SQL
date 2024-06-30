CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
nivel_dificuldade VARCHAR(100)
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
nivel VARCHAR(100) NOT NULL,
ataque INT NOT NULL,
defesa INT NOT NULL,
inteligencia INT NOT NULL,
vida INT NOT NULL,
classe_id BIGINT,
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, nivel_dificuldade) VALUES
('Guerreiro', 'Médio'),
('Mago', 'Difícil'),
('Arqueiro', 'Médio'),
('Ladino', 'Médio'),
('Clérigo', 'Fácil');

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, inteligencia, vida, classe_id) 
VALUES
('Aragorn', 150, 2100, 2500, 1800, 5000, 1),
('Gandalf', 160, 2200, 1250, 1400, 4800, 2),
('Legolas', 155, 1150, 1350, 2500, 4900, 3),
('Frodo', 145, 1100, 1200, 1250, 4700, 4),
('Elrond', 158, 1250, 2000, 1300, 4950, 5),  
('Boromir', 148, 2100, 1150, 1100, 4900, 1),  
('Saruman', 165, 1200, 2100, 1350, 4850, 2),  
('Tauriel', 153, 1250, 1350, 1150, 4750, 3); 

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome like '%C%'; -- testado com a letra F e funcionou

SELECT tb_personagens.nome, nivel, ataque, defesa, inteligencia, vida, tb_classes.nome, tb_classes.nivel_dificuldade
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id;

SELECT tb_personagens.nome, tb_personagens.nivel, tb_personagens.ataque, tb_personagens.defesa, tb_personagens.inteligencia, tb_personagens.vida, tb_classes.nome, tb_classes.nivel_dificuldade
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.nome = 'Arqueiro';






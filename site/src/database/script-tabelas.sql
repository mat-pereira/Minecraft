-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/* para workbench - local - desenvolvimento */
CREATE DATABASE mat_minecraft;

USE mat_minecraft;

CREATE TABLE pm_usuarios (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
	nivel VARCHAR(50),
	lingua VARCHAR(50)
);

CREATE TABLE pm_publicacoes (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	warp varchar(100),
	arquivo varchar(100),
	descricao VARCHAR(150),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES pm_usuarios(id)
); 

CREATE TABLE pm_acessos (
	id INT PRIMARY KEY AUTO_INCREMENT,
	date_time datetime default current_timestamp,
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES pm_usuarios(id)
);

-- Inserindo valores

insert into pm_usuarios values
(null,'userteste1','userteste1@gmail.com','userteste','Basic','English'),
(null,'userteste2','userteste2@gmail.com','userteste','Basic','English'),
(null,'userteste3','userteste3@gmail.com','userteste','Basic','English');

insert into pm_publicacoes values 
(null,'Tester House','1390 9090 1001','https:teste.com','Post para testar o banco de dados',1),
(null,'Tester House 2','1390 9000 1001','https:teste2.com','Post para testar o banco de dados do userteste2',2);



/* para sql server - remoto - produção */

CREATE TABLE pm_usuarios (
	id INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
	nivel VARCHAR(50),
	lingua VARCHAR(50)
);

CREATE TABLE pm_publicacoes (
	id INT PRIMARY KEY IDENTITY(1,1),
	titulo VARCHAR(100),
    descricao VARCHAR(150),
	warp varchar(100),
	arquivo varchar(100),
	fk_usuario INT FOREIGN KEY REFERENCES pm_usuarios(id)
); 

CREATE TABLE pm_acessos (
	id INT PRIMARY KEY IDENTITY(1,1),
	date_time datetime default current_timestamp,
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES pm_usuarios(id)
);



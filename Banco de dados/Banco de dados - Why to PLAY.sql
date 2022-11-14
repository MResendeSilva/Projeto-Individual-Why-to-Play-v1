CREATE DATABASE projetoindividual;
USE projetoindividual;

CREATE TABLE usuario (
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    email VARCHAR(45),
    CONSTRAINT chkEmail CHECK (email LIKE '%@%'),
    senha VARCHAR(45),
    fkConfig INT,
    FOREIGN KEY (fkConfig) REFERENCES config (idConfig)
);

CREATE TABLE config (
    idConfig INT PRIMARY KEY AUTO_INCREMENT,
    processador VARCHAR(45),
    placaMae VARCHAR(45),
    memoriaRam VARCHAR(45),
    memoriaInterna VARCHAR(45),
    placadeVideo VARCHAR(45),
    fonte VARCHAR(45)
);

CREATE TABLE tipoGame (
    idtipoGame INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45)
);

CREATE TABLE votacao (
	fktipoGame INT,
	FOREIGN KEY (fktipoGame) REFERENCES tipoGame (idtipoGame),
	fkUsuario INT,
	FOREIGN KEY (fkUsuario) REFERENCES usuario (idUsuario),
    PRIMARY KEY (fkTipoGame, fkUsuario)
);

CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	descricao VARCHAR(250),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(idUsuario)
);

INSERT INTO tipoGame (nome) VALUES 
('moba'),
('competitivo'),
('battleroyale');

select * from aviso;
select * from usuario;

truncate table usuario;





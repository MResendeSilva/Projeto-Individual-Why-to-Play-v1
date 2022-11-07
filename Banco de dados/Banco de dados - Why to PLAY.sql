CREATE DATABASE projetoindividual;
USE projetoindividual;


CREATE TABLE cadastroCliente (
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    email VARCHAR(45),
    CONSTRAINT chkEmail CHECK (email LIKE '%@%'),
    senha VARCHAR(45)
);

CREATE TABLE config (
    idConfig INT,
    processador VARCHAR(45),
    placaMae VARCHAR(45),
    memoriaRam VARCHAR(45),
    memoriaInterna VARCHAR(45),
    tipoMemInterna VARCHAR(45),
	placadeVideo VARCHAR(45),
    fonte VARCHAR(45),
    cooler VARCHAR(10)
);

CREATE TABLE tipoGame (
    idtipoGame INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    descricao VARCHAR(45)
);

ALTER TABLE cadastroCliente DROP COLUMN telCel;

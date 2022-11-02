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
    memoriaRam INT,
    memoriaInterna INT,
    tipoMemInterna VARCHAR(10),
    gpu VARCHAR(45),
    fonte INT,
    cooler VARCHAR(10)
);

ALTER TABLE cadastroCliente DROP COLUMN telCel;

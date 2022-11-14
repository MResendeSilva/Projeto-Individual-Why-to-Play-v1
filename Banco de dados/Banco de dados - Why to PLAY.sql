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

INSERT INTO config (processador,placaMae,memoriaRam,memoriaInterna,placadevideo,fonte) VALUES
('AMD - Ryzen 3 2200g 3.7GHz','Gigabyte GA-A320M-H','Husky Gaming, 8GB, 2666MHz, DDR4','SSD 120 GB Kingston A400',' Vega 8 - Integrada do processador','Fonte 200W, 80 Plus White'),
('AMD - Ryzen 5 2400g 3.9GHz','Gigabyte B-350m','Husky Gaming, 8GB, 2400Mhz, DDR4','SSD 120 GB Kingston A400','RX 560 PowerColor Red Dragon','Fonte gamemax 400W, 80 Plus White'),
('INTEL CORE - I5 10400f 4.3Ghz','Asus Prime H410M-E','Husky Gaming - 8GB DDR4 2666MHz','SSD 240 GB Kingston A400','RX 570 PowerColor Red Dragon','Fonte gamemax 400W, 80 Plus White'),
('INTEL CORE - I5 10400f 4.3Ghz','Asus TUF Gaming B450M','HyperX Fury - 16GB DDR4 2666MHz','SSD 240 GB Kingston A400','GTX 1660 GALAX 6gb','Fonte gamemax 500W, 80 Plus White'),
('AMD - Ryzen 7 5700X 4.6Ghz',' Asus Prime X570-Pro','HyperX Fury - 16GB DDR4 3000MHz','SSD NVME 512 GB WD GREEM','RTX 2060 1-Click OC Galax 6gb','Fonte Corsair 650W, 80 Plus Bronze'),
('INTEL CORE - I9 10900k 5.3Ghz','ROG STRIX Z490-G GAMING','HyperX Fury - 32GB DDR4 3200MHz','SSD 1 TB WD BlackA','RTX 3070 TI 1-Click OC Galax 8gb','Fonte Corsair 700W, 80 Plus Gold');

INSERT INTO jogo (nome,estiloJogo,fkConfig) VALUES
('terraria','sandbox em plataforma 2D','1'),
('csgo','fps competitivo','2'),
('pubg','battle royale','3'),
('fifa23','futebol','4'),
('codmw2','fps','5'),
('r2d2','ação e aventura / mundo aberto','6');

INSERT INTO tipoGame (nome) VALUES 
('moba'),
('competitivo'),
('battleroyale');

select * from aviso;
select * from usuario;

truncate table usuario;





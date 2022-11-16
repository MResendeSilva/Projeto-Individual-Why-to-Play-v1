CREATE DATABASE projetoindividual;
USE projetoindividual;

CREATE TABLE usuario (
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    email VARCHAR(45),
    CONSTRAINT chkEmail CHECK (email LIKE '%@%'),
    senha VARCHAR(45),
    fkConfig INT,
    FOREIGN KEY (fkConfig) REFERENCES config (idConfig),
    fkJogo INT,
	FOREIGN KEY (fkJogo) REFERENCES tipoGame (idtipoGame)
);

CREATE TABLE config (
    idConfig INT PRIMARY KEY AUTO_INCREMENT,
    processador VARCHAR(70),
    placaMae VARCHAR(70),
    memoriaRam VARCHAR(70),
    memoriaInterna VARCHAR(70),
    placadeVideo VARCHAR(70),
    fonte VARCHAR(70)
);

CREATE TABLE tipoGame (
    idtipoGame INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45)
);

CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	descricao VARCHAR(250),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(idUsuario)
);

select * from vo;

select * from USUARIO;

INSERT INTO tipoGame VALUES 
(null,'moba'),
(null,'competitivo'),
(null,'battleroyale');


INSERT INTO config VALUES
(null, '1x AMD - Ryzen 3 2200g (3.7GHz Turbo)', '1x Gigabyte GA-A320M-H', '1x Husky Gaming, 8GB, 2400MHz, DDR4', '1x SSD 120 GB Kingston A400', '1x Vega 8 - Integrada do processador','1x Blue Case 200W, 80 Plus White'),
(null, '1x AMD - Ryzen 5 2400g (3.9GHz Turbo)', '1x Gigabyte B-350m', '1x Husky Gaming, 8GB, 2400Mhz, DDR4', '1x SSD 120 GB Kingston A400', '1x RX 560 PowerColor Red Dragon ou Vega 11 - Integrada do processador','1x Blue Case 200W, 80 Plus White'),
(null, '1x Intel Core - I5 10400f (4.3Ghz Turbo)', '1x Asus Prime H410M-E', '2x Husky Gaming - 8GB DDR4 2666MHz', '1x SSD 240 GB Kingston A400', '1x RX 570 PowerColor Red Dragon','1x Gamemax GM400 400W, 80 Plus White'),
(null, '1x Intel Core - I5 10600KF (4.8Ghz Turbo)', '1x Asus TUF Gaming B450M', '2x HyperX Fury - 8GB DDR4 2666MHz', '1x SSD 240 GB Gigabyte', '1x Galax GeForce GTX 1060 Super 6GB 1-CLICK OC','1x Gamemax GM500 500W, 80 Plus Bronze, PFC Ativo'),
(null, '1x AMD - Ryzen 7 5700X (4.6Ghz Turbo)', '1x Gigabyte B550M Aorus Elite', '2x 8GB 3200MHz, DDR4 Kingston Fury Beast RGB', '1x SSD NVME 512GB WD GREEN', '1x RTX 2060 1-Click OC Galax 6gb','1x Fonte Corsair 650W, 80 Plus Bronze'),
(null, '1x Intel Core - I9 10900k (5.3Ghz Turbo)', '1x Asus Rog Strix Z490-G Gaming', '4x 8GB 3200MHz, DDR4 Kingston Fury Beast RGB', '1x SSD 1 TB WD Black', '1x RTX 3070 TI 1-Click OC Galax 8gb','1x Corsair 700W, 80 Plus Gold'),
(null, 'NÃO DEFINIDO', 'NÃO DEFINIDO', 'NÃO DEFINIDO', 'NÃO DEFINIDO', 'Vá para aba "descobrir minha config!"','para gerar sua configuração');



select * from usuario 
	join config on idConfig = fkConfig;


SELECT 
  *
FROM
    config;